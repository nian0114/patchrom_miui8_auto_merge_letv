.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$1;,
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x3

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 8
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    :goto_0
    iget-object v2, p1, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v3, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v4, p1, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p1, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    iget v6, p1, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Layout$Ellipsizer;

    .local v7, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v7, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, v7, Landroid/text/Layout$Ellipsizer;->mWidth:I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v7, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .end local v7    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v1, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void

    :cond_0
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/text/StaticLayout$Builder;
    .param p2, "x1"    # Landroid/text/StaticLayout$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    if-nez p11, :cond_0

    move-object v3, p1

    :goto_0
    move-object v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p9

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    .local v10, "b":Landroid/text/StaticLayout$Builder;
    if-eqz p11, :cond_2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Layout$Ellipsizer;

    .local v11, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    move/from16 v0, p12

    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    move-object/from16 v0, p11

    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v2, 0x6

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .end local v11    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v2, Landroid/text/Layout$Directions;

    iget v3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Layout$Directions;

    iput-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget-boolean v2, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v3, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, v10, v2, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    # invokes: Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V
    invoke-static {v10}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)V

    return-void

    .end local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .restart local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    invoke-static {}, Landroid/text/StaticLayout;->nNewBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFinishBuilder(J)V

    return-void
.end method

.method static synthetic access$200(J[I)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # [I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    return-void
.end method

.method static synthetic access$300(JLjava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nSetLocale(JLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400(JJJIIZ)F
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # I
    .param p7, "x4"    # I
    .param p8, "x5"    # Z

    .prologue
    invoke-static/range {p0 .. p8}, Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(JII[F)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V

    return-void
.end method

.method static synthetic access$600(JIIF)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V

    return-void
.end method

.method static synthetic access$800(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFreeBuilder(J)V

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 12
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    return-void
.end method

.method private calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 20
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "lineStart"    # I
    .param p3, "lineEnd"    # I
    .param p4, "widths"    # [F
    .param p5, "widthStart"    # I
    .param p6, "avail"    # F
    .param p7, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p8, "line"    # I
    .param p9, "textWidth"    # F
    .param p10, "paint"    # Landroid/text/TextPaint;
    .param p11, "forceEllipsis"    # Z

    .prologue
    cmpg-float v17, p9, p6

    if-gtz v17, :cond_0

    if-nez p11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p8

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p8

    add-int/lit8 v18, v18, 0x5

    const/16 v19, 0x0

    aput v19, v17, v18

    :goto_0
    return-void

    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_3

    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p10

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .local v4, "ellipsisCount":I
    sub-int v10, p3, p2

    .local v10, "len":I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/4 v15, 0x0

    .local v15, "sum":F
    move v7, v10

    .local v7, "i":I
    :goto_2
    if-lez v7, :cond_1

    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p2

    sub-int v17, v17, p5

    aget v16, p4, v17

    .local v16, "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p6

    if-lez v17, :cond_4

    .end local v16    # "w":F
    :cond_1
    const/4 v5, 0x0

    move v4, v7

    .end local v7    # "i":I
    .end local v15    # "sum":F
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p8

    add-int/lit8 v18, v18, 0x4

    aput v5, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p8

    add-int/lit8 v18, v18, 0x5

    aput v4, v17, v18

    goto :goto_0

    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    :cond_3
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v15    # "sum":F
    .restart local v16    # "w":F
    :cond_4
    add-float v15, v15, v16

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .end local v7    # "i":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_5
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "StaticLayout"

    const-string v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p7

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_a

    :cond_7
    const/4 v15, 0x0

    .restart local v15    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v10, :cond_8

    add-int v17, v7, p2

    sub-int v17, v17, p5

    aget v16, p4, v17

    .restart local v16    # "w":F
    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p6

    if-lez v17, :cond_9

    .end local v16    # "w":F
    :cond_8
    move v5, v7

    sub-int v4, v10, v7

    if-eqz p11, :cond_2

    if-nez v4, :cond_2

    if-lez v10, :cond_2

    add-int/lit8 v5, v10, -0x1

    const/4 v4, 0x1

    goto :goto_3

    .restart local v16    # "w":F
    :cond_9
    add-float v15, v15, v16

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .end local v7    # "i":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v14, 0x0

    .local v14, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v13, v10

    .local v13, "right":I
    sub-float v17, p6, v6

    const/high16 v18, 0x40000000    # 2.0f

    div-float v12, v17, v18

    .local v12, "ravail":F
    move v13, v10

    :goto_5
    if-lez v13, :cond_b

    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p2

    sub-int v17, v17, p5

    aget v16, p4, v17

    .restart local v16    # "w":F
    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-lez v17, :cond_d

    if-ge v13, v10, :cond_b

    add-int v17, p2, v13

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/text/StaticLayout;->isSurrogateChar(Ljava/lang/CharSequence;I)Z

    move-result v17

    if-eqz v17, :cond_b

    add-int v17, v13, p2

    sub-int v17, v17, p5

    aget v17, p4, v17

    sub-float v14, v14, v17

    add-int/lit8 v13, v13, 0x1

    .end local v16    # "w":F
    :cond_b
    sub-float v17, p6, v6

    sub-float v8, v17, v14

    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_6
    if-ge v9, v13, :cond_c

    add-int v17, v9, p2

    sub-int v17, v17, p5

    aget v16, p4, v17

    .restart local v16    # "w":F
    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_e

    .end local v16    # "w":F
    :cond_c
    move v5, v9

    sub-int v4, v13, v9

    goto/16 :goto_3

    .end local v8    # "lavail":F
    .restart local v16    # "w":F
    :cond_d
    add-float v14, v14, v16

    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    .restart local v8    # "lavail":F
    :cond_e
    add-float v11, v11, v16

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rsum":F
    .end local v16    # "w":F
    :cond_f
    const-string v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "StaticLayout"

    const-string v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static isSurrogateChar(Ljava/lang/CharSequence;I)Z
    .locals 4
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "pos"    # I

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    add-int/lit8 v2, p1, -0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .local v1, "prevChar":C
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .local v0, "currChar":C
    invoke-static {v1, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    .end local v0    # "currChar":C
    .end local v1    # "prevChar":C
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static native nAddMeasuredRun(JII[F)V
.end method

.method private static native nAddReplacementRun(JIIF)V
.end method

.method private static native nAddStyleRun(JJJIIZ)F
.end method

.method private static native nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I
.end method

.method private static native nFinishBuilder(J)V
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetWidths(J[F)V
.end method

.method static native nLoadHyphenator(Ljava/nio/ByteBuffer;I)J
.end method

.method private static native nNewBuilder()J
.end method

.method private static native nSetIndents(J[I)V
.end method

.method private static native nSetLocale(JLjava/lang/String;J)V
.end method

.method private static native nSetupParagraph(J[CIFIF[IIII)V
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 29
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "flags"    # I
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    .local v10, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v27, v10, v2

    .local v27, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v28, v2, 0x1

    .local v28, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v26, v0

    .local v26, "lines":[I
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v28

    if-lt v0, v2, :cond_0

    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/Layout$Directions;

    .local v21, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object/from16 v0, v21

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .local v20, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v26

    array-length v4, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v26, v20

    .end local v20    # "grow":[I
    .end local v21    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v23, 0x0

    .local v23, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v23

    if-ge v0, v2, :cond_2

    aget-object v2, p11, v23

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    aget-object v2, p11, v23

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v23

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :goto_1
    add-int/lit8 v23, v23, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, p11, v23

    aget v6, p12, v23

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .end local v23    # "i":I
    :cond_3
    if-nez v10, :cond_f

    const/16 v19, 0x1

    .local v19, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v10, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_10

    const/4 v14, 0x1

    .local v14, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v14, :cond_4

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_11

    :cond_4
    const/16 v24, 0x1

    .local v24, "lastLine":Z
    :goto_4
    if-eqz v19, :cond_6

    if-eqz p21, :cond_5

    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_5
    if-eqz p20, :cond_6

    move/from16 p4, p6

    :cond_6
    if-eqz v24, :cond_8

    if-eqz p21, :cond_7

    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_7
    if-eqz p20, :cond_8

    move/from16 p5, p7

    :cond_8
    if-eqz p15, :cond_13

    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_12

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v0, v2

    move/from16 v18, v0

    .end local v16    # "ex":D
    .local v18, "extra":I
    :goto_5
    add-int/lit8 v2, v27, 0x0

    aput p2, v26, v2

    add-int/lit8 v2, v27, 0x1

    aput p8, v26, v2

    add-int/lit8 v2, v27, 0x2

    add-int v3, p5, v18

    aput v3, v26, v2

    div-int/lit8 v2, v18, 0x2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v0, v2

    move/from16 v22, v0

    .local v22, "halfExtra":I
    add-int/lit8 v2, v27, 0x2

    add-int v3, p5, v22

    aput v3, v26, v2

    sub-int v2, p5, p4

    add-int v2, v2, v18

    add-int p8, p8, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v2, v2, 0x0

    aput p3, v26, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v2, v2, 0x1

    aput p8, v26, v2

    add-int/lit8 v2, v27, 0x0

    aget v3, v26, v2

    const/high16 v4, 0x20000000

    and-int v4, v4, p14

    or-int/2addr v3, v4

    aput v3, v26, v2

    add-int/lit8 v2, v27, 0x3

    aput p14, v26, v2

    add-int/lit8 v2, v27, 0x0

    aget v3, v26, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v26, v2

    sget-object v25, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .local v25, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v25, v2, v10

    :goto_6
    if-eqz p25, :cond_e

    if-eqz p29, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_15

    const/4 v13, 0x1

    .local v13, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v19, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v19, :cond_16

    if-nez v14, :cond_c

    if-nez p29, :cond_16

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_16

    :cond_d
    const/4 v15, 0x1

    .local v15, "doEllipsis":Z
    :goto_8
    if-eqz v15, :cond_e

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p23

    move/from16 v7, p24

    move/from16 v8, p26

    move-object/from16 v9, p25

    move/from16 v11, p27

    move-object/from16 v12, p28

    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;->calculateEllipsis(Ljava/lang/CharSequence;II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    .end local v13    # "forceEllipsis":Z
    .end local v15    # "doEllipsis":Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    return p8

    .end local v14    # "currentLineIsTheLastVisibleOne":Z
    .end local v18    # "extra":I
    .end local v19    # "firstLine":Z
    .end local v22    # "halfExtra":I
    .end local v24    # "lastLine":Z
    .end local v25    # "linedirs":Landroid/text/Layout$Directions;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_2

    .restart local v19    # "firstLine":Z
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_3

    .restart local v14    # "currentLineIsTheLastVisibleOne":Z
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_4

    .restart local v16    # "ex":D
    .restart local v24    # "lastLine":Z
    :cond_12
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v18, v0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .end local v16    # "ex":D
    .end local v18    # "extra":I
    :cond_13
    const/16 v18, 0x0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .restart local v22    # "halfExtra":I
    .restart local v25    # "linedirs":Landroid/text/Layout$Directions;
    :cond_14
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v10

    goto/16 :goto_6

    :cond_15
    const/4 v13, 0x0

    goto :goto_7

    .restart local v13    # "forceEllipsis":Z
    :cond_16
    const/4 v15, 0x0

    goto :goto_8
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 123
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .prologue
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .local v5, "source":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v81, v0

    .local v81, "bufStart":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v46, v0

    .local v46, "bufEnd":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v55, v0

    .local v55, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v107, v0

    .local v107, "outerWidth":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .local v8, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v36, v0

    .local v36, "spacingmult":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v37, v0

    .local v37, "spacingadd":F
    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v53, v0

    .local v53, "ellipsizedWidth":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v52, v0

    .local v52, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    new-instance v26, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct/range {v26 .. v26}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    .local v26, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    const/4 v9, 0x4

    new-array v0, v9, [I

    move-object/from16 v114, v0

    .local v114, "spanEndCache":[I
    const/16 v9, 0x10

    new-array v0, v9, [I

    move-object/from16 v94, v0

    .local v94, "fmCache":[I
    invoke-virtual/range {v55 .. v55}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v9

    move-object/from16 v0, p1

    # invokes: Landroid/text/StaticLayout$Builder;->setLocale(Ljava/util/Locale;)V
    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    const/16 v35, 0x0

    .local v35, "v":I
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v36, v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v37, v9

    if-eqz v9, :cond_3

    :cond_0
    const/16 v42, 0x1

    .local v42, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v22, v0

    .local v22, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v39, 0x0

    .local v39, "chooseHtv":[I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .local v4, "measured":Landroid/text/MeasuredText;
    const/16 v119, 0x0

    .local v119, "spanned":Landroid/text/Spanned;
    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_1

    move-object/from16 v119, v5

    check-cast v119, Landroid/text/Spanned;

    :cond_1
    move/from16 v6, v81

    .local v6, "paraStart":I
    :goto_1
    move/from16 v0, v46

    if-gt v6, v0, :cond_26

    const/16 v9, 0xa

    move/from16 v0, v46

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    .local v7, "paraEnd":I
    if-gez v7, :cond_4

    move/from16 v7, v46

    :goto_2
    const/4 v15, 0x1

    .local v15, "firstWidthLineCount":I
    move/from16 v91, v107

    .local v91, "firstWidth":I
    move/from16 v109, v107

    .local v109, "restWidth":I
    const/16 v38, 0x0

    .local v38, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v119, :cond_6

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v119

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v112

    check-cast v112, [Landroid/text/style/LeadingMarginSpan;

    .local v112, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v98, 0x0

    .local v98, "i":I
    :goto_3
    move-object/from16 v0, v112

    array-length v9, v0

    move/from16 v0, v98

    if-ge v0, v9, :cond_5

    aget-object v104, v112, v98

    .local v104, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v9, v112, v98

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v91, v91, v9

    aget-object v9, v112, v98

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v109, v109, v9

    move-object/from16 v0, v104

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_2

    move-object/from16 v105, v104

    check-cast v105, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .local v105, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface/range {v105 .. v105}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .end local v105    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_2
    add-int/lit8 v98, v98, 0x1

    goto :goto_3

    .end local v4    # "measured":Landroid/text/MeasuredText;
    .end local v6    # "paraStart":I
    .end local v7    # "paraEnd":I
    .end local v15    # "firstWidthLineCount":I
    .end local v22    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v39    # "chooseHtv":[I
    .end local v42    # "needMultiply":Z
    .end local v91    # "firstWidth":I
    .end local v98    # "i":I
    .end local v104    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v109    # "restWidth":I
    .end local v112    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v119    # "spanned":Landroid/text/Spanned;
    :cond_3
    const/16 v42, 0x0

    goto :goto_0

    .restart local v4    # "measured":Landroid/text/MeasuredText;
    .restart local v6    # "paraStart":I
    .restart local v7    # "paraEnd":I
    .restart local v22    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v39    # "chooseHtv":[I
    .restart local v42    # "needMultiply":Z
    .restart local v119    # "spanned":Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .restart local v15    # "firstWidthLineCount":I
    .restart local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v91    # "firstWidth":I
    .restart local v98    # "i":I
    .restart local v109    # "restWidth":I
    .restart local v112    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v119

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v38, [Landroid/text/style/LineHeightSpan;

    .restart local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v38

    array-length v9, v0

    if-nez v9, :cond_7

    const/16 v38, 0x0

    .end local v98    # "i":I
    .end local v112    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_6
    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    .local v12, "chs":[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v50, v0

    .local v50, "widths":[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v43, v0

    .local v43, "chdirs":[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v44, v0

    .local v44, "dir":I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v45, v0

    .local v45, "easy":Z
    const/16 v17, 0x0

    .local v17, "variableTabStops":[I
    if-eqz v119, :cond_c

    const-class v9, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v119

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v120

    check-cast v120, [Landroid/text/style/TabStopSpan;

    .local v120, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v120

    array-length v9, v0

    if-lez v9, :cond_c

    move-object/from16 v0, v120

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v121, v0

    .local v121, "stops":[I
    const/16 v98, 0x0

    .restart local v98    # "i":I
    :goto_4
    move-object/from16 v0, v120

    array-length v9, v0

    move/from16 v0, v98

    if-ge v0, v9, :cond_b

    aget-object v9, v120, v98

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v121, v98

    add-int/lit8 v98, v98, 0x1

    goto :goto_4

    .end local v12    # "chs":[C
    .end local v17    # "variableTabStops":[I
    .end local v43    # "chdirs":[B
    .end local v44    # "dir":I
    .end local v45    # "easy":Z
    .end local v50    # "widths":[F
    .end local v120    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v121    # "stops":[I
    .restart local v112    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_7
    if-eqz v39, :cond_8

    move-object/from16 v0, v39

    array-length v9, v0

    move-object/from16 v0, v38

    array-length v10, v0

    if-ge v9, v10, :cond_9

    :cond_8
    move-object/from16 v0, v38

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v39

    :cond_9
    const/16 v98, 0x0

    :goto_5
    move-object/from16 v0, v38

    array-length v9, v0

    move/from16 v0, v98

    if-ge v0, v9, :cond_6

    aget-object v9, v38, v98

    move-object/from16 v0, v119

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v106

    .local v106, "o":I
    move/from16 v0, v106

    if-ge v0, v6, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v39, v98

    :goto_6
    add-int/lit8 v98, v98, 0x1

    goto :goto_5

    :cond_a
    aput v35, v39, v98

    goto :goto_6

    .end local v106    # "o":I
    .end local v112    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v12    # "chs":[C
    .restart local v17    # "variableTabStops":[I
    .restart local v43    # "chdirs":[B
    .restart local v44    # "dir":I
    .restart local v45    # "easy":Z
    .restart local v50    # "widths":[F
    .restart local v120    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v121    # "stops":[I
    :cond_b
    const/4 v9, 0x0

    move-object/from16 v0, v121

    array-length v10, v0

    move-object/from16 v0, v121

    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->sort([III)V

    move-object/from16 v17, v121

    .end local v98    # "i":I
    .end local v120    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v121    # "stops":[I
    :cond_c
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    move/from16 v0, v91

    int-to-float v14, v0

    move/from16 v0, v109

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v18, 0x14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    invoke-static/range {v10 .. v20}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIII)V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_13

    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_e

    const/16 v101, 0x0

    .local v101, "leftLen":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_f

    const/16 v110, 0x0

    .local v110, "rightLen":I
    :goto_8
    const/4 v9, 0x1

    move/from16 v0, v101

    move/from16 v1, v110

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v100

    .local v100, "indentsLen":I
    move/from16 v0, v100

    new-array v0, v0, [I

    move-object/from16 v99, v0

    .local v99, "indents":[I
    const/16 v98, 0x0

    .restart local v98    # "i":I
    :goto_9
    move/from16 v0, v98

    move/from16 v1, v100

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_10

    const/16 v102, 0x0

    .local v102, "leftMargin":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_11

    const/16 v111, 0x0

    .local v111, "rightMargin":I
    :goto_b
    add-int v9, v102, v111

    aput v9, v99, v98

    add-int/lit8 v98, v98, 0x1

    goto :goto_9

    .end local v98    # "i":I
    .end local v99    # "indents":[I
    .end local v100    # "indentsLen":I
    .end local v101    # "leftLen":I
    .end local v102    # "leftMargin":I
    .end local v110    # "rightLen":I
    .end local v111    # "rightMargin":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v101, v0

    goto :goto_7

    .restart local v101    # "leftLen":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v110, v0

    goto :goto_8

    .restart local v98    # "i":I
    .restart local v99    # "indents":[I
    .restart local v100    # "indentsLen":I
    .restart local v110    # "rightLen":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v98

    add-int/lit8 v11, v101, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v102, v9, v10

    goto :goto_a

    .restart local v102    # "leftMargin":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v98

    add-int/lit8 v11, v110, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v111, v9, v10

    goto :goto_b

    .end local v102    # "leftMargin":I
    :cond_12
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v99

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    .end local v98    # "i":I
    .end local v99    # "indents":[I
    .end local v100    # "indentsLen":I
    .end local v101    # "leftLen":I
    .end local v110    # "rightLen":I
    :cond_13
    const/16 v95, 0x0

    .local v95, "fmCacheCount":I
    const/16 v115, 0x0

    .local v115, "spanEndCacheCount":I
    move/from16 v118, v6

    .local v118, "spanStart":I
    :goto_c
    move/from16 v0, v118

    if-ge v0, v7, :cond_17

    mul-int/lit8 v9, v95, 0x4

    move-object/from16 v0, v94

    array-length v10, v0

    if-lt v9, v10, :cond_14

    mul-int/lit8 v9, v95, 0x4

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [I

    move-object/from16 v97, v0

    .local v97, "grow":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    mul-int/lit8 v11, v95, 0x4

    move-object/from16 v0, v94

    move-object/from16 v1, v97

    invoke-static {v0, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v94, v97

    .end local v97    # "grow":[I
    :cond_14
    move-object/from16 v0, v114

    array-length v9, v0

    move/from16 v0, v115

    if-lt v0, v9, :cond_15

    mul-int/lit8 v9, v115, 0x2

    new-array v0, v9, [I

    move-object/from16 v97, v0

    .restart local v97    # "grow":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v114

    move-object/from16 v1, v97

    move/from16 v2, v115

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v114, v97

    .end local v97    # "grow":[I
    :cond_15
    if-nez v119, :cond_16

    move/from16 v113, v7

    .local v113, "spanEnd":I
    sub-int v21, v113, v118

    .local v21, "spanLen":I
    move-object/from16 v0, v55

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    :goto_d
    mul-int/lit8 v9, v95, 0x4

    add-int/lit8 v9, v9, 0x0

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    aput v10, v94, v9

    mul-int/lit8 v9, v95, 0x4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    aput v10, v94, v9

    mul-int/lit8 v9, v95, 0x4

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    aput v10, v94, v9

    mul-int/lit8 v9, v95, 0x4

    add-int/lit8 v9, v9, 0x3

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    aput v10, v94, v9

    add-int/lit8 v95, v95, 0x1

    aput v113, v114, v115

    add-int/lit8 v115, v115, 0x1

    move/from16 v118, v113

    goto :goto_c

    .end local v21    # "spanLen":I
    .end local v113    # "spanEnd":I
    :cond_16
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v119

    move/from16 v1, v118

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v113

    .restart local v113    # "spanEnd":I
    sub-int v21, v113, v118

    .restart local v21    # "spanLen":I
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v119

    move/from16 v1, v118

    move/from16 v2, v113

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v120

    check-cast v120, [Landroid/text/style/MetricAffectingSpan;

    .local v120, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v120

    move-object/from16 v1, v119

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v120

    .end local v120    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v120, [Landroid/text/style/MetricAffectingSpan;

    .restart local v120    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v55

    move-object/from16 v1, v120

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    const-class v9, Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    move-object/from16 v0, v119

    move/from16 v1, v118

    move/from16 v2, v113

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Lcom/letv/leui/util/LeLinkify$LeURLSpan;

    .local v20, "urlSpans":[Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    invoke-virtual/range {p0 .. p0}, Landroid/text/StaticLayout;->getUrlPadding()I

    move-result v23

    move-object/from16 v18, v4

    move-object/from16 v19, v55

    invoke-virtual/range {v18 .. v23}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Lcom/letv/leui/util/LeLinkify$LeURLSpan;ILandroid/graphics/Paint$FontMetricsInt;I)F

    goto :goto_d

    .end local v20    # "urlSpans":[Lcom/letv/leui/util/LeLinkify$LeURLSpan;
    .end local v21    # "spanLen":I
    .end local v113    # "spanEnd":I
    .end local v120    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_17
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v50

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v26

    iget-object v9, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v0, v9

    move/from16 v30, v0

    invoke-static/range {v24 .. v30}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    move-result v87

    .local v87, "breakCount":I
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v89, v0

    .local v89, "breaks":[I
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v103, v0

    .local v103, "lineWidths":[F
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v93, v0

    .local v93, "flags":[I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v108, v9, v10

    .local v108, "remainingLineCount":I
    if-eqz v52, :cond_19

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v52

    if-eq v0, v9, :cond_18

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_19

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v52

    if-eq v0, v9, :cond_19

    :cond_18
    const/16 v90, 0x1

    .local v90, "ellipsisMayBeApplied":Z
    :goto_e
    if-lez v108, :cond_1b

    move/from16 v0, v108

    move/from16 v1, v87

    if-ge v0, v1, :cond_1b

    if-eqz v90, :cond_1b

    add-int/lit8 v9, v108, -0x1

    add-int/lit8 v10, v87, -0x1

    aget v10, v89, v10

    aput v10, v89, v9

    const/16 v122, 0x0

    .local v122, "width":F
    const/16 v92, 0x0

    .local v92, "flag":I
    add-int/lit8 v98, v108, -0x1

    .restart local v98    # "i":I
    :goto_f
    move/from16 v0, v98

    move/from16 v1, v87

    if-ge v0, v1, :cond_1a

    aget v9, v103, v98

    add-float v122, v122, v9

    aget v9, v93, v98

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    or-int v92, v92, v9

    add-int/lit8 v98, v98, 0x1

    goto :goto_f

    .end local v90    # "ellipsisMayBeApplied":Z
    .end local v92    # "flag":I
    .end local v98    # "i":I
    .end local v122    # "width":F
    :cond_19
    const/16 v90, 0x0

    goto :goto_e

    .restart local v90    # "ellipsisMayBeApplied":Z
    .restart local v92    # "flag":I
    .restart local v98    # "i":I
    .restart local v122    # "width":F
    :cond_1a
    add-int/lit8 v9, v108, -0x1

    aput v122, v103, v9

    add-int/lit8 v9, v108, -0x1

    aput v92, v93, v9

    move/from16 v87, v108

    .end local v92    # "flag":I
    .end local v98    # "i":I
    .end local v122    # "width":F
    :cond_1b
    move/from16 v29, v6

    .local v29, "here":I
    const/16 v33, 0x0

    .local v33, "fmTop":I
    const/16 v34, 0x0

    .local v34, "fmBottom":I
    const/16 v31, 0x0

    .local v31, "fmAscent":I
    const/16 v32, 0x0

    .local v32, "fmDescent":I
    const/16 v96, 0x0

    .local v96, "fmCacheIndex":I
    const/16 v116, 0x0

    .local v116, "spanEndCacheIndex":I
    const/16 v88, 0x0

    .local v88, "breakIndex":I
    move/from16 v118, v6

    move/from16 v117, v116

    .end local v116    # "spanEndCacheIndex":I
    .local v117, "spanEndCacheIndex":I
    :goto_10
    move/from16 v0, v118

    if-ge v0, v7, :cond_25

    add-int/lit8 v116, v117, 0x1

    .end local v117    # "spanEndCacheIndex":I
    .restart local v116    # "spanEndCacheIndex":I
    aget v113, v114, v117

    .restart local v113    # "spanEnd":I
    mul-int/lit8 v9, v96, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v9, v94, v9

    move-object/from16 v0, v22

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    mul-int/lit8 v9, v96, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v9, v94, v9

    move-object/from16 v0, v22

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-int/lit8 v9, v96, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v9, v94, v9

    move-object/from16 v0, v22

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-int/lit8 v9, v96, 0x4

    add-int/lit8 v9, v9, 0x3

    aget v9, v94, v9

    move-object/from16 v0, v22

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/lit8 v96, v96, 0x1

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v33

    if-ge v9, v0, :cond_1c

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v33, v0

    :cond_1c
    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v31

    if-ge v9, v0, :cond_1d

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v31, v0

    :cond_1d
    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v32

    if-le v9, v0, :cond_1e

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v32, v0

    :cond_1e
    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v34

    if-le v9, v0, :cond_1f

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v34, v0

    :cond_1f
    :goto_11
    move/from16 v0, v88

    move/from16 v1, v87

    if-ge v0, v1, :cond_20

    aget v9, v89, v88

    add-int/2addr v9, v6

    move/from16 v0, v118

    if-ge v9, v0, :cond_20

    add-int/lit8 v88, v88, 0x1

    goto :goto_11

    :cond_20
    move/from16 v0, v88

    move/from16 v1, v87

    if-ge v0, v1, :cond_24

    aget v9, v89, v88

    add-int/2addr v9, v6

    move/from16 v0, v113

    if-gt v9, v0, :cond_24

    aget v9, v89, v88

    add-int v30, v6, v9

    .local v30, "endPos":I
    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_22

    const/16 v56, 0x1

    .local v56, "moreChars":Z
    :goto_12
    aget v41, v93, v88

    aget v54, v103, v88

    move-object/from16 v27, p0

    move-object/from16 v28, v5

    move-object/from16 v40, v22

    move/from16 v47, p2

    move/from16 v48, p3

    move-object/from16 v49, v12

    move/from16 v51, v6

    invoke-direct/range {v27 .. v56}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v35

    move/from16 v0, v30

    move/from16 v1, v113

    if-ge v0, v1, :cond_23

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v33, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v34, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v31, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v32, v0

    :goto_13
    move/from16 v29, v30

    add-int/lit8 v88, v88, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_20

    .end local v7    # "paraEnd":I
    .end local v12    # "chs":[C
    .end local v15    # "firstWidthLineCount":I
    .end local v17    # "variableTabStops":[I
    .end local v29    # "here":I
    .end local v30    # "endPos":I
    .end local v31    # "fmAscent":I
    .end local v32    # "fmDescent":I
    .end local v33    # "fmTop":I
    .end local v34    # "fmBottom":I
    .end local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v43    # "chdirs":[B
    .end local v44    # "dir":I
    .end local v45    # "easy":Z
    .end local v50    # "widths":[F
    .end local v56    # "moreChars":Z
    .end local v87    # "breakCount":I
    .end local v88    # "breakIndex":I
    .end local v89    # "breaks":[I
    .end local v90    # "ellipsisMayBeApplied":Z
    .end local v91    # "firstWidth":I
    .end local v93    # "flags":[I
    .end local v95    # "fmCacheCount":I
    .end local v96    # "fmCacheIndex":I
    .end local v103    # "lineWidths":[F
    .end local v108    # "remainingLineCount":I
    .end local v109    # "restWidth":I
    .end local v113    # "spanEnd":I
    .end local v115    # "spanEndCacheCount":I
    .end local v116    # "spanEndCacheIndex":I
    .end local v118    # "spanStart":I
    :cond_21
    :goto_14
    return-void

    .restart local v7    # "paraEnd":I
    .restart local v12    # "chs":[C
    .restart local v15    # "firstWidthLineCount":I
    .restart local v17    # "variableTabStops":[I
    .restart local v29    # "here":I
    .restart local v30    # "endPos":I
    .restart local v31    # "fmAscent":I
    .restart local v32    # "fmDescent":I
    .restart local v33    # "fmTop":I
    .restart local v34    # "fmBottom":I
    .restart local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v43    # "chdirs":[B
    .restart local v44    # "dir":I
    .restart local v45    # "easy":Z
    .restart local v50    # "widths":[F
    .restart local v87    # "breakCount":I
    .restart local v88    # "breakIndex":I
    .restart local v89    # "breaks":[I
    .restart local v90    # "ellipsisMayBeApplied":Z
    .restart local v91    # "firstWidth":I
    .restart local v93    # "flags":[I
    .restart local v95    # "fmCacheCount":I
    .restart local v96    # "fmCacheIndex":I
    .restart local v103    # "lineWidths":[F
    .restart local v108    # "remainingLineCount":I
    .restart local v109    # "restWidth":I
    .restart local v113    # "spanEnd":I
    .restart local v115    # "spanEndCacheCount":I
    .restart local v116    # "spanEndCacheIndex":I
    .restart local v118    # "spanStart":I
    :cond_22
    const/16 v56, 0x0

    goto :goto_12

    .restart local v56    # "moreChars":Z
    :cond_23
    const/16 v32, 0x0

    move/from16 v31, v32

    move/from16 v34, v32

    move/from16 v33, v32

    goto :goto_13

    .end local v30    # "endPos":I
    .end local v56    # "moreChars":Z
    :cond_24
    move/from16 v118, v113

    move/from16 v117, v116

    .end local v116    # "spanEndCacheIndex":I
    .restart local v117    # "spanEndCacheIndex":I
    goto/16 :goto_10

    .end local v113    # "spanEnd":I
    :cond_25
    move/from16 v0, v46

    if-ne v7, v0, :cond_28

    .end local v7    # "paraEnd":I
    .end local v12    # "chs":[C
    .end local v15    # "firstWidthLineCount":I
    .end local v17    # "variableTabStops":[I
    .end local v29    # "here":I
    .end local v31    # "fmAscent":I
    .end local v32    # "fmDescent":I
    .end local v33    # "fmTop":I
    .end local v34    # "fmBottom":I
    .end local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v43    # "chdirs":[B
    .end local v44    # "dir":I
    .end local v45    # "easy":Z
    .end local v50    # "widths":[F
    .end local v87    # "breakCount":I
    .end local v88    # "breakIndex":I
    .end local v89    # "breaks":[I
    .end local v90    # "ellipsisMayBeApplied":Z
    .end local v91    # "firstWidth":I
    .end local v93    # "flags":[I
    .end local v95    # "fmCacheCount":I
    .end local v96    # "fmCacheIndex":I
    .end local v103    # "lineWidths":[F
    .end local v108    # "remainingLineCount":I
    .end local v109    # "restWidth":I
    .end local v115    # "spanEndCacheCount":I
    .end local v117    # "spanEndCacheIndex":I
    .end local v118    # "spanStart":I
    :cond_26
    move/from16 v0, v46

    move/from16 v1, v81

    if-eq v0, v1, :cond_27

    add-int/lit8 v9, v46, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_21

    :cond_27
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_21

    move-object/from16 v57, v4

    move-object/from16 v58, v5

    move/from16 v59, v46

    move/from16 v60, v46

    move-object/from16 v61, v8

    move-object/from16 v62, p1

    invoke-virtual/range {v57 .. v62}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    move-object/from16 v0, v55

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v61, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v62, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v63, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v64, v0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v71, 0x0

    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v73, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v74, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v75, v0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v84, 0x0

    const/16 v86, 0x0

    move-object/from16 v57, p0

    move-object/from16 v58, v5

    move/from16 v59, v46

    move/from16 v60, v46

    move/from16 v65, v35

    move/from16 v66, v36

    move/from16 v67, v37

    move-object/from16 v70, v22

    move/from16 v72, v42

    move/from16 v76, v46

    move/from16 v77, p2

    move/from16 v78, p3

    move-object/from16 v82, v52

    move/from16 v83, v53

    move-object/from16 v85, v55

    invoke-direct/range {v57 .. v86}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v35

    goto/16 :goto_14

    .restart local v7    # "paraEnd":I
    .restart local v12    # "chs":[C
    .restart local v15    # "firstWidthLineCount":I
    .restart local v17    # "variableTabStops":[I
    .restart local v29    # "here":I
    .restart local v31    # "fmAscent":I
    .restart local v32    # "fmDescent":I
    .restart local v33    # "fmTop":I
    .restart local v34    # "fmBottom":I
    .restart local v38    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v43    # "chdirs":[B
    .restart local v44    # "dir":I
    .restart local v45    # "easy":Z
    .restart local v50    # "widths":[F
    .restart local v87    # "breakCount":I
    .restart local v88    # "breakIndex":I
    .restart local v89    # "breaks":[I
    .restart local v90    # "ellipsisMayBeApplied":Z
    .restart local v91    # "firstWidth":I
    .restart local v93    # "flags":[I
    .restart local v95    # "fmCacheCount":I
    .restart local v96    # "fmCacheIndex":I
    .restart local v103    # "lineWidths":[F
    .restart local v108    # "remainingLineCount":I
    .restart local v109    # "restWidth":I
    .restart local v115    # "spanEndCacheCount":I
    .restart local v117    # "spanEndCacheIndex":I
    .restart local v118    # "spanStart":I
    :cond_28
    move v6, v7

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 5
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    .prologue
    const/4 v2, 0x0

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne p2, v3, :cond_2

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    goto :goto_0

    :cond_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v3, :cond_3

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    neg-int v2, v2

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_6

    const/4 v0, 0x0

    .local v0, "left":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v0, v2, v3

    :cond_4
    const/4 v1, 0x0

    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unhandled alignment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .local v1, "high":I
    const/4 v3, -0x1

    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    const/4 v3, 0x0

    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
