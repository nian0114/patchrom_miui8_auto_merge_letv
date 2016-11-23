.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field static final ELLIPSIS_NORMAL:[C

.field private static final ELLIPSIS_STRING:Ljava/lang/String;

.field static final ELLIPSIS_TWO_DOTS:[C

.field private static final ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field private static final FIRST_RIGHT_TO_LEFT:C = '\u0590'

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String; = null

.field public static final LAST_SPAN:I = 0x1a

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LEUI_COLOR_SPAN:I = 0x1a

.field public static final LEURL_SPAN:I = 0x19

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    .line 69
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    .line 71
    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    .line 72
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    .line 692
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 1824
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 1826
    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1828
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 1832
    const-string v0, "Arab"

    sput-object v0, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 1833
    const-string v0, "Hebr"

    sput-object v0, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Parcel;
    .param p1, "x1"    # Landroid/text/Spannable;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;

    .prologue
    .line 1230
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 26
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "oneMore"    # Ljava/lang/String;
    .param p4, "more"    # Ljava/lang/String;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 1240
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1242
    .local v3, "mt":Landroid/text/MeasuredText;
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    .line 1243
    .local v7, "len":I
    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v24

    .line 1244
    .local v24, "width":F
    cmpg-float v4, v24, p2

    if-gtz v4, :cond_0

    .line 1298
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object p0

    .line 1248
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_0
    :try_start_1
    iget-object v14, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1250
    .local v14, "buf":[C
    const/4 v15, 0x0

    .line 1251
    .local v15, "commaCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v7, :cond_2

    .line 1252
    aget-char v4, v14, v17

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1

    .line 1253
    add-int/lit8 v15, v15, 0x1

    .line 1251
    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1257
    :cond_2
    add-int/lit8 v22, v15, 0x1

    .line 1259
    .local v22, "remaining":I
    const/16 v19, 0x0

    .line 1260
    .local v19, "ok":I
    const-string v20, ""

    .line 1262
    .local v20, "okFormat":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1263
    .local v23, "w":I
    const/16 v16, 0x0

    .line 1264
    .local v16, "count":I
    iget-object v0, v3, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v25, v0

    .line 1266
    .local v25, "widths":[F
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v8

    .line 1267
    .local v8, "tempMt":Landroid/text/MeasuredText;
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    if-ge v0, v7, :cond_5

    .line 1268
    move/from16 v0, v23

    int-to-float v4, v0

    aget v5, v25, v17

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v23, v0

    .line 1270
    aget-char v4, v14, v17

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_3

    .line 1271
    add-int/lit8 v16, v16, 0x1

    .line 1276
    add-int/lit8 v22, v22, -0x1

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_4

    .line 1277
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1283
    .local v9, "format":Ljava/lang/String;
    :goto_3
    const/4 v10, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x0

    move-object/from16 v12, p5

    invoke-virtual/range {v8 .. v13}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1284
    iget v4, v8, Landroid/text/MeasuredText;->mLen:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v4, v5}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v18

    .line 1286
    .local v18, "moreWid":F
    move/from16 v0, v23

    int-to-float v4, v0

    add-float v4, v4, v18

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_3

    .line 1287
    add-int/lit8 v19, v17, 0x1

    .line 1288
    move-object/from16 v20, v9

    .line 1267
    .end local v9    # "format":Ljava/lang/String;
    .end local v18    # "moreWid":F
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1279
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v6

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "format":Ljava/lang/String;
    goto :goto_3

    .line 1292
    .end local v9    # "format":Ljava/lang/String;
    :cond_5
    invoke-static {v8}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1294
    new-instance v21, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1295
    .local v21, "out":Landroid/text/SpannableStringBuilder;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1298
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v21

    goto/16 :goto_0

    .end local v7    # "len":I
    .end local v8    # "tempMt":Landroid/text/MeasuredText;
    .end local v14    # "buf":[C
    .end local v15    # "commaCount":I
    .end local v16    # "count":I
    .end local v17    # "i":I
    .end local v19    # "ok":I
    .end local v20    # "okFormat":Ljava/lang/String;
    .end local v21    # "out":Landroid/text/SpannableStringBuilder;
    .end local v22    # "remaining":I
    .end local v23    # "w":I
    .end local v24    # "width":F
    .end local v25    # "widths":[F
    :catchall_0
    move-exception v4

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v4
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .param p0, "text"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 1415
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1416
    const-string v0, ""

    .line 1452
    :goto_0
    return-object v0

    .line 1419
    :cond_0
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1420
    aget-object v0, p0, v1

    goto :goto_0

    .line 1423
    :cond_1
    const/4 v8, 0x0

    .line 1424
    .local v8, "spanned":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v0, p0

    if-ge v6, v0, :cond_2

    .line 1425
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 1426
    const/4 v8, 0x1

    .line 1431
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1432
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_2
    array-length v0, p0

    if-ge v6, v0, :cond_4

    .line 1433
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1432
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1424
    .end local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1436
    .restart local v7    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    if-nez v8, :cond_5

    .line 1437
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1440
    :cond_5
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1441
    .local v4, "ss":Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1442
    .local v5, "off":I
    const/4 v6, 0x0

    :goto_3
    array-length v0, p0

    if-ge v6, v0, :cond_7

    .line 1443
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1445
    .local v2, "len":I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    .line 1446
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1449
    :cond_6
    add-int/2addr v5, v2

    .line 1442
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1452
    .end local v2    # "len":I
    :cond_7
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8
    .param p0, "source"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "kind"    # Ljava/lang/Class;
    .param p4, "dest"    # Landroid/text/Spannable;
    .param p5, "destoff"    # I

    .prologue
    .line 1042
    if-nez p3, :cond_0

    .line 1043
    const-class p3, Ljava/lang/Object;

    .line 1046
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 1048
    .local v3, "spans":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 1049
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1050
    .local v4, "st":I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 1051
    .local v0, "en":I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 1053
    .local v1, "fl":I
    if-ge v4, p1, :cond_1

    .line 1054
    move v4, p1

    .line 1055
    :cond_1
    if-le v0, p2, :cond_2

    .line 1056
    move v0, p2

    .line 1058
    :cond_2
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1048
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1061
    .end local v0    # "en":I
    .end local v1    # "fl":I
    .end local v4    # "st":I
    :cond_3
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .param p0, "delimitedString"    # Ljava/lang/String;
    .param p1, "delimiter"    # C
    .param p2, "item"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1662
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move v3, v4

    .line 1680
    :cond_1
    :goto_0
    return v3

    .line 1665
    :cond_2
    const/4 v2, -0x1

    .line 1666
    .local v2, "pos":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1667
    .local v1, "length":I
    :cond_3
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_5

    .line 1668
    if-lez v2, :cond_4

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    .line 1671
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v2, v5

    .line 1672
    .local v0, "expectedDelimiterPos":I
    if-eq v0, v1, :cond_1

    .line 1676
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, p1, :cond_3

    goto :goto_0

    .end local v0    # "expectedDelimiterPos":I
    :cond_5
    move v3, v4

    .line 1680
    goto :goto_0
.end method

.method static doesNotNeedBidi(Ljava/lang/CharSequence;II)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 1332
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 1333
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x590

    if-lt v1, v2, :cond_0

    .line 1334
    const/4 v1, 0x0

    .line 1337
    :goto_1
    return v1

    .line 1332
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1337
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method static doesNotNeedBidi([CII)Z
    .locals 4
    .param p0, "text"    # [C
    .param p1, "start"    # I
    .param p2, "len"    # I

    .prologue
    .line 1342
    move v1, p1

    .local v1, "i":I
    add-int v0, v1, p2

    .local v0, "e":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1343
    aget-char v2, p0, v1

    const/16 v3, 0x590

    if-lt v2, v3, :cond_0

    .line 1344
    const/4 v2, 0x0

    .line 1347
    :goto_1
    return v2

    .line 1342
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1347
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 7
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "printer"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 843
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    move-object v3, p0

    .line 844
    check-cast v3, Landroid/text/Spanned;

    .line 845
    .local v3, "sp":Landroid/text/Spanned;
    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const-class v6, Ljava/lang/Object;

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 847
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_1

    .line 848
    aget-object v1, v2, v0

    .line 849
    .local v1, "o":Ljava/lang/Object;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 857
    .end local v0    # "i":I
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v3    # "sp":Landroid/text/Spanned;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": (no spans)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 859
    :cond_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1091
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;

    .prologue
    .line 1111
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v0, :cond_0

    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    goto :goto_0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 22
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "avail"    # F
    .param p3, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p4, "preserveLength"    # Z
    .param p5, "callback"    # Landroid/text/TextUtils$EllipsizeCallback;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "ellipsis"    # Ljava/lang/String;

    .prologue
    .line 1136
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    .line 1138
    .local v15, "len":I
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1140
    .local v3, "mt":Landroid/text/MeasuredText;
    const/4 v6, 0x0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v21

    .line 1142
    .local v21, "width":F
    cmpg-float v5, v21, p2

    if-gtz v5, :cond_1

    .line 1143
    if-eqz p5, :cond_0

    .line 1144
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    :cond_0
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .end local p0    # "text":Ljava/lang/CharSequence;
    :goto_0
    return-object p0

    .line 1152
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    .line 1153
    .local v11, "ellipsiswid":F
    sub-float p2, p2, v11

    .line 1155
    const/4 v13, 0x0

    .line 1156
    .local v13, "left":I
    move/from16 v17, v15

    .line 1157
    .local v17, "right":I
    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_3

    move v14, v13

    .line 1169
    .end local v13    # "left":I
    .local v14, "left":I
    :goto_1
    if-eqz p5, :cond_2

    .line 1170
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v14, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1173
    :cond_2
    iget-object v10, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1174
    .local v10, "buf":[C
    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    move-object v4, v5

    .line 1176
    .local v4, "sp":Landroid/text/Spanned;
    :goto_2
    sub-int v5, v17, v14

    sub-int v16, v15, v5

    .line 1177
    .local v16, "remaining":I
    if-eqz p4, :cond_a

    .line 1178
    if-lez v16, :cond_d

    .line 1179
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "left":I
    .restart local v13    # "left":I
    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v10, v14

    .line 1181
    :goto_3
    move v12, v13

    .local v12, "i":I
    :goto_4
    move/from16 v0, v17

    if-ge v12, v0, :cond_8

    .line 1182
    const v5, 0xfeff

    aput-char v5, v10, v12

    .line 1181
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1159
    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v10    # "buf":[C
    .end local v12    # "i":I
    .end local v16    # "remaining":I
    :cond_3
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_4

    .line 1160
    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    move v14, v13

    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_1

    .line 1161
    .end local v14    # "left":I
    .restart local v13    # "left":I
    :cond_4
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-eq v0, v5, :cond_5

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_6

    .line 1162
    :cond_5
    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_1

    .line 1164
    .end local v14    # "left":I
    .restart local v13    # "left":I
    :cond_6
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, p2, v6

    invoke-virtual {v3, v15, v5, v6}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    .line 1165
    move/from16 v0, v17

    invoke-virtual {v3, v0, v15}, Landroid/text/MeasuredText;->measure(II)F

    move-result v5

    sub-float p2, p2, v5

    .line 1166
    const/4 v5, 0x1

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v3, v0, v5, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    .end local v13    # "left":I
    .restart local v14    # "left":I
    goto :goto_1

    .line 1174
    .restart local v10    # "buf":[C
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 1184
    .end local v14    # "left":I
    .restart local v4    # "sp":Landroid/text/Spanned;
    .restart local v12    # "i":I
    .restart local v13    # "left":I
    .restart local v16    # "remaining":I
    :cond_8
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v10, v5, v15}, Ljava/lang/String;-><init>([CII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1185
    .local v18, "s":Ljava/lang/String;
    if-nez v4, :cond_9

    .line 1211
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v18

    goto/16 :goto_0

    .line 1188
    :cond_9
    :try_start_2
    new-instance v8, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1189
    .local v8, "ss":Landroid/text/SpannableString;
    const/4 v5, 0x0

    const-class v7, Ljava/lang/Object;

    const/4 v9, 0x0

    move v6, v15

    invoke-static/range {v4 .. v9}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1211
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v8

    goto/16 :goto_0

    .line 1193
    .end local v8    # "ss":Landroid/text/SpannableString;
    .end local v12    # "i":I
    .end local v13    # "left":I
    .end local v18    # "s":Ljava/lang/String;
    .restart local v14    # "left":I
    :cond_a
    if-nez v16, :cond_b

    .line 1194
    :try_start_3
    const-string p0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1211
    .end local p0    # "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_0

    .line 1197
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_b
    if-nez v4, :cond_c

    .line 1198
    :try_start_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, v16

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1199
    .local v19, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v5, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1200
    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    sub-int v5, v15, v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object p0

    .line 1211
    .end local p0    # "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    goto/16 :goto_0

    .line 1205
    .end local v19    # "sb":Ljava/lang/StringBuilder;
    .restart local p0    # "text":Ljava/lang/CharSequence;
    :cond_c
    :try_start_5
    new-instance v20, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1206
    .local v20, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1207
    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1208
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1211
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-object/from16 p0, v20

    goto/16 :goto_0

    .end local v4    # "sp":Landroid/text/Spanned;
    .end local v10    # "buf":[C
    .end local v11    # "ellipsiswid":F
    .end local v14    # "left":I
    .end local v16    # "remaining":I
    .end local v17    # "right":I
    .end local v20    # "ssb":Landroid/text/SpannableStringBuilder;
    .end local v21    # "width":F
    :catchall_0
    move-exception v5

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v5

    .restart local v4    # "sp":Landroid/text/Spanned;
    .restart local v10    # "buf":[C
    .restart local v11    # "ellipsiswid":F
    .restart local v14    # "left":I
    .restart local v16    # "remaining":I
    .restart local v17    # "right":I
    .restart local v21    # "width":F
    :cond_d
    move v13, v14

    .end local v14    # "left":I
    .restart local v13    # "left":I
    goto/16 :goto_3
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .param p0, "a"    # Ljava/lang/CharSequence;
    .param p1, "b"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 503
    if-ne p0, p1, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v2

    .line 505
    :cond_1
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "length":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v1, v4, :cond_4

    .line 506
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_2

    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 507
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 509
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 510
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    move v2, v3

    goto :goto_0

    .line 509
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_4
    move v2, v3

    .line 515
    goto :goto_0
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "values"    # [Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x5e

    .line 913
    array-length v4, p1

    const/16 v5, 0x9

    if-le v4, v5, :cond_0

    .line 914
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "max of 9 values are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 917
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 920
    .local v2, "ssb":Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 921
    .local v0, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 922
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_5

    .line 923
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 924
    .local v1, "next":C
    if-ne v1, v6, :cond_1

    .line 925
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 926
    add-int/lit8 v0, v0, 0x1

    .line 927
    goto :goto_0

    .line 928
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 929
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 930
    .local v3, "which":I
    if-gez v3, :cond_3

    .line 931
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 946
    .end local v1    # "next":C
    .end local v3    # "which":I
    :catch_0
    move-exception v4

    .line 949
    :cond_2
    return-object v2

    .line 934
    .restart local v1    # "next":C
    .restart local v3    # "which":I
    :cond_3
    array-length v4, p1

    if-lt v3, v4, :cond_4

    .line 935
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 939
    :cond_4
    add-int/lit8 v4, v0, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 940
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v0, v4

    .line 941
    goto/16 :goto_0

    .line 944
    .end local v1    # "next":C
    .end local v3    # "which":I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static formatSelectedCount(I)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "count"    # I

    .prologue
    .line 1821
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1140011

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 10
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "off"    # I
    .param p2, "reqModes"    # I

    .prologue
    const/16 v9, 0x27

    const/16 v8, 0x22

    const/16 v7, 0x2e

    .line 1566
    if-gez p1, :cond_1

    .line 1567
    const/4 v4, 0x0

    .line 1651
    :cond_0
    :goto_0
    return v4

    .line 1572
    :cond_1
    const/4 v4, 0x0

    .line 1574
    .local v4, "mode":I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_2

    .line 1575
    or-int/lit16 v4, v4, 0x1000

    .line 1577
    :cond_2
    and-int/lit16 v5, p2, 0x6000

    if-eqz v5, :cond_0

    .line 1583
    move v1, p1

    .local v1, "i":I
    :goto_1
    if-lez v1, :cond_3

    .line 1584
    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1586
    .local v0, "c":C
    if-eq v0, v8, :cond_5

    if-eq v0, v9, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_5

    .line 1594
    .end local v0    # "c":C
    :cond_3
    move v2, v1

    .line 1595
    .local v2, "j":I
    :goto_2
    if-lez v2, :cond_6

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    const/16 v5, 0x9

    if-ne v0, v5, :cond_6

    .line 1596
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1583
    .end local v2    # "j":I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1598
    .end local v0    # "c":C
    .restart local v2    # "j":I
    :cond_6
    if-eqz v2, :cond_7

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    .line 1599
    :cond_7
    or-int/lit16 v4, v4, 0x2000

    goto :goto_0

    .line 1604
    :cond_8
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_9

    .line 1605
    if-eq v1, v2, :cond_0

    or-int/lit16 v4, v4, 0x2000

    goto :goto_0

    .line 1611
    :cond_9
    if-eq v1, v2, :cond_0

    .line 1617
    :goto_3
    if-lez v2, :cond_a

    .line 1618
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1620
    .restart local v0    # "c":C
    if-eq v0, v8, :cond_d

    if-eq v0, v9, :cond_d

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_d

    .line 1626
    .end local v0    # "c":C
    :cond_a
    if-lez v2, :cond_0

    .line 1627
    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1629
    .restart local v0    # "c":C
    if-eq v0, v7, :cond_b

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_b

    const/16 v5, 0x21

    if-ne v0, v5, :cond_0

    .line 1633
    :cond_b
    if-ne v0, v7, :cond_c

    .line 1634
    add-int/lit8 v3, v2, -0x2

    .local v3, "k":I
    :goto_4
    if-ltz v3, :cond_c

    .line 1635
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1637
    if-eq v0, v7, :cond_0

    .line 1641
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_e

    .line 1647
    .end local v3    # "k":I
    :cond_c
    or-int/lit16 v4, v4, 0x4000

    goto/16 :goto_0

    .line 1617
    :cond_d
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 1634
    .restart local v3    # "k":I
    :cond_e
    add-int/lit8 v3, v3, -0x1

    goto :goto_4
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # [C
    .param p4, "destoff"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 80
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_0

    .line 81
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 92
    :goto_0
    return-void

    .line 82
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_1

    .line 83
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_0

    .line 84
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_1
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_2

    .line 85
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_0

    .line 86
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_2
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_3

    .line 87
    check-cast p0, Landroid/text/GetChars;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_0

    .line 89
    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_3
    move v2, p1

    .local v2, "i":I
    move v1, p4

    .end local p4    # "destoff":I
    .local v1, "destoff":I
    :goto_1
    if-ge v2, p2, :cond_4

    .line 90
    add-int/lit8 p4, v1, 0x1

    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 89
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4    # "destoff":I
    .restart local v1    # "destoff":I
    goto :goto_1

    :cond_4
    move p4, v1

    .end local v1    # "destoff":I
    .restart local p4    # "destoff":I
    goto :goto_0
.end method

.method private static getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v0, 0x0

    .line 1804
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1811
    :goto_0
    return v0

    .line 1807
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1804
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1774
    if-eqz p0, :cond_2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1775
    invoke-static {p0}, Llibcore/icu/ICU;->addLikelySubtags(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 1776
    .local v0, "scriptSubtag":Ljava/lang/String;
    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromFirstChar(Ljava/util/Locale;)I

    move-result v1

    .line 1784
    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 1778
    .restart local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/text/TextUtils;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/text/TextUtils;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1784
    .end local v0    # "scriptSubtag":Ljava/lang/String;
    :cond_2
    const-string v3, "debug.force_rtl"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 9
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    .line 988
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 990
    .local v4, "len":I
    if-ne p1, v4, :cond_1

    .line 1021
    .end local v4    # "len":I
    :cond_0
    :goto_0
    return v4

    .line 992
    .restart local v4    # "len":I
    :cond_1
    add-int/lit8 v7, v4, -0x1

    if-eq p1, v7, :cond_0

    .line 995
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 997
    .local v0, "c":C
    const v7, 0xd800

    if-lt v0, v7, :cond_4

    const v7, 0xdbff

    if-gt v0, v7, :cond_4

    .line 998
    add-int/lit8 v7, p1, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1000
    .local v1, "c1":C
    const v7, 0xdc00

    if-lt v1, v7, :cond_3

    const v7, 0xdfff

    if-gt v1, v7, :cond_3

    .line 1001
    add-int/lit8 p1, p1, 0x2

    .line 1008
    .end local v1    # "c1":C
    :goto_1
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    move-object v7, p0

    .line 1009
    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 1012
    .local v5, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v7, v5

    if-ge v3, v7, :cond_5

    move-object v7, p0

    .line 1013
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .local v6, "start":I
    move-object v7, p0

    .line 1014
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1016
    .local v2, "end":I
    if-ge v6, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1017
    move p1, v2

    .line 1012
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1003
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v5    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v6    # "start":I
    .restart local v1    # "c1":C
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1005
    .end local v1    # "c1":C
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    move v4, p1

    .line 1021
    goto :goto_0
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x0

    .line 953
    if-nez p1, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v6

    .line 955
    :cond_1
    const/4 v7, 0x1

    if-eq p1, v7, :cond_0

    .line 958
    add-int/lit8 v6, p1, -0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 960
    .local v0, "c":C
    const v6, 0xdc00

    if-lt v0, v6, :cond_4

    const v6, 0xdfff

    if-gt v0, v6, :cond_4

    .line 961
    add-int/lit8 v6, p1, -0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 963
    .local v1, "c1":C
    const v6, 0xd800

    if-lt v1, v6, :cond_3

    const v6, 0xdbff

    if-gt v1, v6, :cond_3

    .line 964
    add-int/lit8 p1, p1, -0x2

    .line 971
    .end local v1    # "c1":C
    :goto_1
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_5

    move-object v6, p0

    .line 972
    check-cast v6, Landroid/text/Spanned;

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v6, p1, p1, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 975
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v6, v4

    if-ge v3, v6, :cond_5

    move-object v6, p0

    .line 976
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v6, p0

    .line 977
    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 979
    .local v2, "end":I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 980
    move p1, v5

    .line 975
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 966
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    .restart local v1    # "c1":C
    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 968
    .end local v1    # "c1":C
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    move v6, p1

    .line 984
    goto :goto_0
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 521
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v4, 0x20

    .line 479
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 481
    .local v1, "len":I
    const/4 v2, 0x0

    .line 482
    .local v2, "start":I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_0

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 486
    :cond_0
    move v0, v1

    .line 487
    .local v0, "end":I
    :goto_1
    if-le v0, v2, :cond_1

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_1

    .line 488
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 491
    :cond_1
    sub-int v3, v0, v2

    return v3
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1381
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1382
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1383
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1404
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1381
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1385
    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1388
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1391
    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1398
    :sswitch_3
    const-string v3, "&#39;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1401
    :sswitch_4
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1407
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1383
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 101
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 102
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 104
    :goto_0
    return v1

    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v6, -0x1

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 110
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_0

    const-class v7, Ljava/lang/StringBuffer;

    if-eq v1, v7, :cond_0

    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_0

    const-class v7, Ljava/lang/String;

    if-ne v1, v7, :cond_6

    .line 112
    :cond_0
    const/16 v0, 0x1f4

    .line 113
    .local v0, "INDEX_INCREMENT":I
    const/16 v7, 0x1f4

    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 115
    .local v5, "temp":[C
    :goto_0
    if-ge p2, p3, :cond_5

    .line 116
    add-int/lit16 v4, p2, 0x1f4

    .line 117
    .local v4, "segend":I
    if-le v4, p3, :cond_1

    .line 118
    move v4, p3

    .line 120
    :cond_1
    const/4 v7, 0x0

    invoke-static {p0, p2, v4, v5, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 122
    sub-int v2, v4, p2

    .line 123
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 124
    aget-char v7, v5, v3

    if-ne v7, p1, :cond_3

    .line 125
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 126
    add-int/2addr v3, p2

    .line 141
    .end local v0    # "INDEX_INCREMENT":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    .end local v5    # "temp":[C
    :cond_2
    :goto_2
    return v3

    .line 123
    .restart local v0    # "INDEX_INCREMENT":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "segend":I
    .restart local v5    # "temp":[C
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 130
    :cond_4
    move p2, v4

    .line 131
    goto :goto_0

    .line 133
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "segend":I
    :cond_5
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    move v3, v6

    .line 134
    goto :goto_2

    .line 137
    .end local v0    # "INDEX_INCREMENT":I
    .end local v5    # "temp":[C
    :cond_6
    move v3, p2

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, p3, :cond_7

    .line 138
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, p1, :cond_2

    .line 137
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v3, v6

    .line 141
    goto :goto_2
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I

    .prologue
    .line 207
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "needle"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 212
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 213
    .local v1, "nlen":I
    if-nez v1, :cond_1

    move v2, p2

    .line 234
    :cond_0
    :goto_0
    return v2

    .line 216
    :cond_1
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 219
    .local v0, "c":C
    :goto_1
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 220
    sub-int v3, p3, v1

    if-gt p2, v3, :cond_0

    .line 224
    if-ltz p2, :cond_0

    .line 228
    invoke-static {p0, p2, p1, v4, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, p2

    .line 229
    goto :goto_0

    .line 232
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1493
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1494
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1495
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1496
    const/4 v2, 0x0

    .line 1499
    :goto_1
    return v2

    .line 1494
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1499
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 462
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 463
    :cond_0
    const/4 v0, 0x1

    .line 465
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGraphic(C)Z
    .locals 2
    .param p0, "c"    # C

    .prologue
    .line 1479
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1480
    .local v0, "gc":I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1459
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1460
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1461
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1462
    .local v0, "gc":I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0xe

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    .line 1469
    const/4 v3, 0x1

    .line 1472
    .end local v0    # "gc":I
    :goto_1
    return v3

    .line 1460
    .restart local v0    # "gc":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1472
    .end local v0    # "gc":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isPrintableAscii(C)Z
    .locals 3
    .param p0, "c"    # C

    .prologue
    .line 1506
    const/16 v0, 0x20

    .line 1507
    .local v0, "asciiFirst":I
    const/16 v1, 0x7e

    .line 1508
    .local v1, "asciiLast":I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_0

    const/16 v2, 0x7e

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0xd

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 1515
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1516
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1517
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1518
    const/4 v2, 0x0

    .line 1521
    :goto_1
    return v2

    .line 1516
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1521
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/CharSequence;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10404c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 293
    .local v0, "delimiter":Ljava/lang/CharSequence;
    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # Ljava/lang/Iterable;

    .prologue
    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 323
    .local v0, "firstTime":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 324
    .local v3, "token":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x0

    .line 329
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 331
    .end local v3    # "token":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "tokens"    # [Ljava/lang/Object;

    .prologue
    .line 302
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 304
    .local v1, "firstTime":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 305
    .local v5, "token":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 306
    const/4 v1, 0x0

    .line 310
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 304
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 312
    .end local v5    # "token":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C

    .prologue
    .line 145
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "last"    # I

    .prologue
    .line 149
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 151
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 152
    check-cast p0, Ljava/lang/String;

    .end local p0    # "s":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 154
    :goto_0
    return v1

    .restart local p0    # "s":Ljava/lang/CharSequence;
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I
    .param p3, "last"    # I

    .prologue
    const/4 v7, -0x1

    .line 159
    if-gez p3, :cond_1

    move v4, v7

    .line 199
    :cond_0
    :goto_0
    return v4

    .line 161
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-lt p3, v8, :cond_2

    .line 162
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    add-int/lit8 p3, v8, -0x1

    .line 164
    :cond_2
    add-int/lit8 v3, p3, 0x1

    .line 166
    .local v3, "end":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 168
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/CharSequence;>;"
    instance-of v8, p0, Landroid/text/GetChars;

    if-nez v8, :cond_3

    const-class v8, Ljava/lang/StringBuffer;

    if-eq v1, v8, :cond_3

    const-class v8, Ljava/lang/StringBuilder;

    if-eq v1, v8, :cond_3

    const-class v8, Ljava/lang/String;

    if-ne v1, v8, :cond_8

    .line 170
    :cond_3
    const/16 v0, 0x1f4

    .line 171
    .local v0, "INDEX_INCREMENT":I
    const/16 v8, 0x1f4

    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 173
    .local v6, "temp":[C
    :goto_1
    if-ge p2, v3, :cond_7

    .line 174
    add-int/lit16 v5, v3, -0x1f4

    .line 175
    .local v5, "segstart":I
    if-ge v5, p2, :cond_4

    .line 176
    move v5, p2

    .line 178
    :cond_4
    const/4 v8, 0x0

    invoke-static {p0, v5, v3, v6, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 180
    sub-int v2, v3, v5

    .line 181
    .local v2, "count":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_6

    .line 182
    aget-char v8, v6, v4

    if-ne v8, p1, :cond_5

    .line 183
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 184
    add-int/2addr v4, v5

    goto :goto_0

    .line 181
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 188
    :cond_6
    move v3, v5

    .line 189
    goto :goto_1

    .line 191
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "segstart":I
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    move v4, v7

    .line 192
    goto :goto_0

    .line 195
    .end local v0    # "INDEX_INCREMENT":I
    .end local v6    # "temp":[C
    :cond_8
    add-int/lit8 v4, v3, -0x1

    .restart local v4    # "i":I
    :goto_3
    if-lt v4, p2, :cond_9

    .line 196
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-eq v8, p1, :cond_0

    .line 195
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_9
    move v4, v7

    .line 199
    goto :goto_0
.end method

.method public static nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static obtain(I)[C
    .locals 3
    .param p0, "len"    # I

    .prologue
    .line 1353
    sget-object v2, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1354
    :try_start_0
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1355
    .local v0, "buf":[C
    const/4 v1, 0x0

    sput-object v1, Landroid/text/TextUtils;->sTemp:[C

    .line 1356
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    .line 1359
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    .line 1361
    :cond_1
    return-object v0

    .line 1356
    .end local v0    # "buf":[C
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static packRangeInLong(II)J
    .locals 4
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 1740
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spannable;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 1025
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1026
    return-void
.end method

.method static recycle([C)V
    .locals 2
    .param p0, "temp"    # [C

    .prologue
    .line 1365
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1371
    :goto_0
    return-void

    .line 1368
    :cond_0
    sget-object v1, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1369
    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1370
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 6
    .param p0, "one"    # Ljava/lang/CharSequence;
    .param p1, "toffset"    # I
    .param p2, "two"    # Ljava/lang/CharSequence;
    .param p3, "ooffset"    # I
    .param p4, "len"    # I

    .prologue
    .line 240
    mul-int/lit8 v3, p4, 0x2

    .line 241
    .local v3, "tempLen":I
    if-ge v3, p4, :cond_0

    .line 243
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    .line 245
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 247
    .local v2, "temp":[C
    add-int v4, p1, p4

    const/4 v5, 0x0

    invoke-static {p0, p1, v4, v2, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 248
    add-int v4, p3, p4

    invoke-static {p2, p3, v4, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 250
    const/4 v1, 0x1

    .line 251
    .local v1, "match":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 252
    aget-char v4, v2, v0

    add-int v5, v0, p4

    aget-char v5, v2, v5

    if-eq v4, v5, :cond_2

    .line 253
    const/4 v1, 0x0

    .line 258
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 259
    return v1

    .line 251
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 9
    .param p1, "spanned"    # Landroid/text/Spanned;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "spans":[Ljava/lang/Object;, "[TT;"
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v8, 0x0

    .line 1702
    const/4 v0, 0x0

    .line 1703
    .local v0, "copy":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .line 1705
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_2

    .line 1706
    aget-object v5, p0, v3

    .line 1707
    .local v5, "span":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 1708
    .local v6, "start":I
    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1710
    .local v2, "end":I
    if-ne v6, v2, :cond_1

    .line 1711
    if-nez v0, :cond_0

    .line 1712
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    .line 1713
    invoke-static {p0, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1714
    move v1, v3

    .line 1705
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1717
    :cond_1
    if-eqz v0, :cond_0

    .line 1718
    aput-object v5, v0, v1

    .line 1719
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1724
    .end local v2    # "end":I
    .end local v5    # "span":Ljava/lang/Object;, "TT;"
    .end local v6    # "start":I
    :cond_2
    if-eqz v0, :cond_3

    .line 1725
    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v4, v7

    check-cast v4, [Ljava/lang/Object;

    .line 1726
    .local v4, "result":[Ljava/lang/Object;, "[TT;"
    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1729
    .end local v4    # "result":[Ljava/lang/Object;, "[TT;"
    :goto_2
    return-object v4

    :cond_3
    move-object v4, p0

    goto :goto_2
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "template"    # Ljava/lang/CharSequence;
    .param p1, "sources"    # [Ljava/lang/String;
    .param p2, "destinations"    # [Ljava/lang/CharSequence;

    .prologue
    .line 868
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 870
    .local v3, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 871
    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 873
    .local v4, "where":I
    if-ltz v4, :cond_0

    .line 874
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 870
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 878
    .end local v4    # "where":I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 879
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 880
    .local v2, "start":I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 882
    .local v0, "end":I
    if-ltz v2, :cond_2

    .line 883
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 878
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 887
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_3
    return-object v3
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 12
    .param p0, "mt"    # Landroid/text/MeasuredText;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 1305
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1308
    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/text/Spanned;

    .end local p2    # "text":Ljava/lang/CharSequence;
    move-object v7, p2

    .line 1309
    .local v7, "sp":Landroid/text/Spanned;
    :goto_0
    sub-int v6, p4, p3

    .line 1310
    .local v6, "len":I
    if-nez v7, :cond_2

    .line 1311
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v11

    .line 1325
    .local v11, "width":F
    :cond_0
    return v11

    .line 1308
    .end local v6    # "len":I
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v11    # "width":F
    .restart local p2    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 1313
    .end local p2    # "text":Ljava/lang/CharSequence;
    .restart local v6    # "len":I
    .restart local v7    # "sp":Landroid/text/Spanned;
    :cond_2
    const/4 v11, 0x0

    .line 1315
    .restart local v11    # "width":F
    const/4 v9, 0x0

    .local v9, "spanStart":I
    :goto_1
    if-ge v9, v6, :cond_0

    .line 1316
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v9, v6, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v8

    .line 1318
    .local v8, "spanEnd":I
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v9, v8, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    .line 1320
    .local v10, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v10, v7, v0}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    .line 1321
    .restart local v10    # "spans":[Landroid/text/style/MetricAffectingSpan;
    sub-int v0, v8, v9

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v10, v0, v1}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float/2addr v11, v0

    .line 1315
    move v9, v8

    goto :goto_1
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 346
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 348
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 362
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 363
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 365
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;

    .prologue
    .line 446
    if-nez p0, :cond_1

    .line 447
    const/4 p0, 0x0

    .line 453
    .end local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p0

    .line 448
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_1
    instance-of v0, p0, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    .line 450
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 451
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_0

    .line 453
    :cond_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v3, 0x0

    .line 270
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 271
    check-cast p0, Ljava/lang/String;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 282
    :goto_0
    return-object v0

    .line 272
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_0
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 273
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 274
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_1
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_2

    .line 275
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0    # "source":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    .restart local p0    # "source":Ljava/lang/CharSequence;
    :cond_2
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 278
    .local v1, "temp":[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 279
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 280
    .local v0, "ret":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public static unpackRangeEndFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .prologue
    .line 1760
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .locals 2
    .param p0, "range"    # J

    .prologue
    .line 1750
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 12
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 640
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    .line 641
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p0

    .line 644
    check-cast v5, Landroid/text/Spanned;

    .line 645
    .local v5, "sp":Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v5, v10, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 652
    .local v2, "os":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v7, v2

    if-ge v0, v7, :cond_4

    .line 653
    aget-object v1, v2, v0

    .line 654
    .local v1, "o":Ljava/lang/Object;
    aget-object v3, v2, v0

    .line 656
    .local v3, "prop":Ljava/lang/Object;
    instance-of v7, v3, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    .line 657
    check-cast v3, Landroid/text/style/CharacterStyle;

    .end local v3    # "prop":Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v3

    .line 660
    :cond_0
    instance-of v7, v3, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_2

    move-object v4, v3

    .line 661
    check-cast v4, Landroid/text/ParcelableSpan;

    .line 662
    .local v4, "ps":Landroid/text/ParcelableSpan;
    invoke-interface {v4}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    move-result v6

    .line 663
    .local v6, "spanTypeId":I
    if-lt v6, v11, :cond_1

    const/16 v7, 0x1a

    if-le v6, v7, :cond_3

    .line 664
    :cond_1
    const-string v7, "TextUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "External class \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" is attempting to use the frameworks-only ParcelableSpan"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " interface"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 668
    .restart local v4    # "ps":Landroid/text/ParcelableSpan;
    .restart local v6    # "spanTypeId":I
    :cond_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    invoke-interface {v4, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 670
    invoke-static {p1, v5, v1}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_1

    .line 675
    .end local v1    # "o":Ljava/lang/Object;
    .end local v4    # "ps":Landroid/text/ParcelableSpan;
    .end local v6    # "spanTypeId":I
    :cond_4
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    .end local v0    # "i":I
    .end local v2    # "os":[Ljava/lang/Object;
    .end local v5    # "sp":Landroid/text/Spanned;
    :goto_2
    return-void

    .line 677
    :cond_5
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    if-eqz p0, :cond_6

    .line 679
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 681
    :cond_6
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1
    .param p0, "p"    # Landroid/os/Parcel;
    .param p1, "sp"    # Landroid/text/Spanned;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 687
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    return-void
.end method
