const axios = require("axios").default;
const qs = require("qs");

/// Start Claude Group Code

function createClaudeGroup() {
  return {
    baseUrl: `https://api.anthropic.com`,
    headers: {
      Key: `x-api-key`,
      Value: `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`,
      Key: `anthropic-version`,
      Value: `2023-06-01`,
      Key: `content-type`,
      Value: `application/json`,
    },
  };
}

async function _sendMessageCall(context, ffVariables) {
  if (!context.auth) {
    return _unauthenticatedResponse;
  }
  var userMessage = ffVariables["userMessage"];
  const claudeGroup = createClaudeGroup();

  var url = `${claudeGroup.baseUrl}/v1/messages`;
  var headers = {
    Key: `x-api-key`,
    Value: `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`,
    Key: `anthropic-version`,
    Value: `2023-06-01`,
    Key: `content-type`,
    Value: `application/json`,
  };
  var params = {};
  var ffApiRequestBody = `
{
  "model": "claude-sonnet-4-20250514",
  "max_tokens": 1024,
  "system": "You are Bliss Coach, a warm and empathetic AI health assistant specialized in women's hormonal health, menopause symptoms, nutrition, and wellness. Always respond with compassion and practical advice.",
  "messages": [
    {
      "role": "user",
      "content": "${escapeStringForJson(userMessage)}"
    }
  ]
}`;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    params,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "JSON",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

/// End Claude Group Code

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    SendMessageCall: _sendMessageCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
  isStreamingApi,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      responseType: isStreamingApi ? "stream" : "json",
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
        isStreamingApi: isStreamingApi,
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}
function escapeStringForJson(val) {
  if (typeof val !== "string") {
    return val;
  }
  return val
    .replace(/[\\]/g, "\\\\")
    .replace(/["]/g, '\\"')
    .replace(/[\n]/g, "\\n")
    .replace(/[\t]/g, "\\t");
}

module.exports = { makeApiCall };
