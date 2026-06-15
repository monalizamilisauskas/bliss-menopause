import '/backend/backend.dart';
import '/components/article_card1_widget.dart';
import '/components/filter_chip2_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/index.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'allreadings_page_model.dart';
export 'allreadings_page_model.dart';

/// Create AllReadings page for Bliss Menopause app.
///
/// SCAFFOLD: backgroundColor #FDF6F0. SafeArea enabled. No bottom nav bar.
/// APPBAR: backgroundColor #FDF6F0. Back button left color #2D1B0E onPressed
/// context.pop(). Title "Reading Library" bold size 20 color #2D1B0E
/// centered. Elevation 0.  BODY: Column mainAxisSize max gap 16px padding top
/// 16px:  SEARCH BAR (outside list): Container white borderRadius 12px border
/// 1px #C9A84C padding 12px margin horizontal 20px. Row gap 8px: Icon
/// search_rounded color #8B6F5E size 20 / TextField hint "Search articles..."
/// color #8B6F5E no border.  FILTER ROW (outside list): SingleChildScrollView
/// horizontal margin horizontal 20px. Row gap 8px: 4 FilterChip borderRadius
/// 20px padding horizontal 16px vertical 8px. Selected: background #C9A84C
/// text white. Unselected: background white border 1px #C9A84C text #C9A84C.
/// Labels: All Sleep Wellness Nutrition.  ARTICLE LIST: Expanded > ListView
/// gap 12px padding horizontal 20px paddingBottom 40px. Each item: Container
/// white borderRadius 16px border 1px #F0E6D3 shadow blur4 #1A000000 padding
/// 16px. Row gap 12px crossStart: Container 56x56 background #F0E6D3
/// borderRadius 12px Icon menu_book_rounded color #C9A84C size 28 / Column
/// crossStart gap 4px: Text title bodyMedium bold color #2D1B0E / Text
/// readTime bodySmall color #8B6F5E / Container background #FFF3D6
/// borderRadius 20px padding horizontal 10px vertical 4px Text tag labelSmall
/// bold color #C9A84C. onTap navigate to ArticleDetail1 passing title content
/// tag readTime imageUrl.  FONTS: plusJakartaSans body. playfairDisplay
/// headlines. No hardcoded hex except listed.
class AllreadingsPageWidget extends StatefulWidget {
  const AllreadingsPageWidget({super.key});

  static String routeName = 'AllreadingsPage';
  static String routePath = '/AllreadingsPage';

  @override
  State<AllreadingsPageWidget> createState() => _AllreadingsPageWidgetState();
}

class _AllreadingsPageWidgetState extends State<AllreadingsPageWidget> {
  late AllreadingsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AllreadingsPageModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ArticlesRecord>>(
      stream: queryArticlesRecord(
        queryBuilder: (articlesRecord) => articlesRecord
            .where(
              'isPublished',
              isEqualTo: true,
            )
            .where(
              'tag',
              isEqualTo: functions.getTagFilter(_model.selectedTag) != ''
                  ? functions.getTagFilter(_model.selectedTag)
                  : null,
            )
            .orderBy('createdAt', descending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: Color(0xFFFDF6F0),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<ArticlesRecord> allreadingsPageArticlesRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: Color(0xFFFDF6F0),
            body: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFDF6F0),
                    shape: BoxShape.rectangle,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
                    child: Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          FlutterFlowIconButton(
                            borderRadius: 8.0,
                            buttonSize: 40.0,
                            fillColor: Colors.transparent,
                            icon: Icon(
                              Icons.arrow_back_rounded,
                              color: Color(0xFF2D1B0E),
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                          Text(
                            FFLocalizations.of(context).getText(
                              'br5ofx97' /* Reading Library */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .headlineSmall
                                .override(
                                  font: GoogleFonts.roboto(
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .headlineSmall
                                        .fontStyle,
                                  ),
                                  color: Color(0xFF2D1B0E),
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .fontStyle,
                                ),
                          ),
                          Container(
                            width: 40.0,
                          ),
                        ].divide(SizedBox(width: 16.0)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 16.0),
                  child: Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color: Color(0xFFC9A84C),
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Container(
                          width: double.infinity,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.search_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 20.0,
                              ),
                              Container(
                                width: 200.0,
                                child: TextFormField(
                                  controller: _model.textController,
                                  focusNode: _model.textFieldFocusNode,
                                  onChanged: (_) => EasyDebounce.debounce(
                                    '_model.textController',
                                    Duration(milliseconds: 2000),
                                    () async {
                                      _model.searchText =
                                          _model.textController.text;
                                      safeSetState(() {});
                                    },
                                  ),
                                  autofocus: false,
                                  enabled: true,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: true,
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelLarge
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .fontStyle,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'k7l8x09w' /* Search articles... */,
                                    ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          font: GoogleFonts.plusJakartaSans(
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .fontStyle,
                                          ),
                                          color: Color(0xFF8B6F5E),
                                          letterSpacing: 0.0,
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelMedium
                                                  .fontStyle,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0x00000000),
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        font: GoogleFonts.plusJakartaSans(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .fontStyle,
                                        ),
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  enableInteractiveSelection: true,
                                  validator: _model.textControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 16.0),
                        child: Container(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedTag = 'All';
                                  safeSetState(() {});
                                },
                                child: wrapWithModel(
                                  model: _model.filterChipModel1,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FilterChip2Widget(
                                    selected: _model.selectedTag == 'All'
                                        ? true
                                        : false,
                                    label: 'All',
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedTag = 'Sleep';
                                  safeSetState(() {});
                                },
                                child: wrapWithModel(
                                  model: _model.filterChipModel2,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FilterChip2Widget(
                                    selected: _model.selectedTag == 'Sleep'
                                        ? true
                                        : false,
                                    label: 'Sleep',
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedTag = 'Wellness';
                                  safeSetState(() {});
                                },
                                child: wrapWithModel(
                                  model: _model.filterChipModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FilterChip2Widget(
                                    selected: _model.selectedTag == 'Wellness'
                                        ? true
                                        : false,
                                    label: 'Wellness',
                                  ),
                                ),
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.selectedTag = 'Nutrition';
                                  safeSetState(() {});
                                },
                                child: wrapWithModel(
                                  model: _model.filterChipModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  child: FilterChip2Widget(
                                    selected: _model.selectedTag == 'Nutrition'
                                        ? true
                                        : false,
                                    label: 'Nutrition',
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Builder(
                      builder: (context) {
                        final articleItem =
                            allreadingsPageArticlesRecordList.toList();

                        return SingleChildScrollView(
                          primary: false,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: List.generate(articleItem.length,
                                (articleItemIndex) {
                              final articleItemItem =
                                  articleItem[articleItemIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 0.0, 20.0, 12.0),
                                child: Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed(
                                            ArticleDetail1Widget.routeName,
                                            queryParameters: {
                                              'title': serializeParam(
                                                articleItemItem.title,
                                                ParamType.String,
                                              ),
                                              'content': serializeParam(
                                                articleItemItem.content,
                                                ParamType.String,
                                              ),
                                              'tag': serializeParam(
                                                articleItemItem.tag,
                                                ParamType.String,
                                              ),
                                              'readTime': serializeParam(
                                                articleItemItem.readTime,
                                                ParamType.String,
                                              ),
                                              'imageUrl': serializeParam(
                                                articleItemItem.imageUrl,
                                                ParamType.String,
                                              ),
                                            }.withoutNulls,
                                          );
                                        },
                                        child: wrapWithModel(
                                          model:
                                              _model.articleCardModels.getModel(
                                            allreadingsPageArticlesRecordList
                                                .elementAtOrNull(
                                                    articleItemIndex)!
                                                .reference
                                                .id,
                                            articleItemIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: ArticleCard1Widget(
                                            key: Key(
                                              'Keyzxj_${allreadingsPageArticlesRecordList.elementAtOrNull(articleItemIndex)!.reference.id}',
                                            ),
                                            title: articleItemItem.title,
                                            readTime: articleItemItem.readTime,
                                            tag: articleItemItem.tag,
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(height: 12.0)),
                                  ),
                                ),
                              );
                            }),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
