.class public Landroid/text/DynamicLayout;
.super Landroid/text/Layout;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/DynamicLayout$ChangeWatcher;
    }
.end annotation


# static fields
.field private static final BLOCK_MINIMUM_CHARACTER_LENGTH:I = 0x190

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final ELLIPSIS_UNDEFINED:I = -0x80000000

.field private static final HYPHEN:I = 0x3

.field public static final INVALID_BLOCK_INDEX:I = -0x1

.field private static final PRIORITY:I = 0x80

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_MASK:I = 0x20000000

.field private static final TOP:I = 0x1

.field private static sBuilder:Landroid/text/StaticLayout$Builder;

.field private static final sLock:[Ljava/lang/Object;

.field private static sStaticLayout:Landroid/text/StaticLayout;


# instance fields
.field private mBase:Ljava/lang/CharSequence;

.field private mBlockEndLines:[I

.field private mBlockIndices:[I

.field private mBottomPadding:I

.field private mBreakStrategy:I

.field private mDisplay:Ljava/lang/CharSequence;

.field private mEllipsize:Z

.field private mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

.field private mEllipsizedWidth:I

.field private mHyphenationFrequency:I

.field private mIncludePad:Z

.field private mIndexFirstChangedBlock:I

.field private mInts:Landroid/text/PackedIntVector;

.field private mNumberOfBlocks:I

.field private mObjects:Landroid/text/PackedObjectVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/PackedObjectVector",
            "<",
            "Landroid/text/Layout$Directions;",
            ">;"
        }
    .end annotation
.end field

.field private mTopPadding:I

.field private mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 868
    sput-object v0, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 869
    sput-object v0, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 871
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 9
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 11
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 68
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    .line 85
    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;I)V
    .locals 19
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "breakStrategy"    # I
    .param p11, "hyphenationFrequency"    # I
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p13, "ellipsizedWidth"    # I

    .prologue
    .line 106
    if-nez p12, :cond_2

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 113
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 114
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 116
    if-eqz p12, :cond_4

    .line 117
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 118
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 119
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 126
    :goto_1
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 128
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 129
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 130
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 140
    if-eqz p12, :cond_0

    .line 141
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 143
    .local v13, "e":Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 144
    move/from16 v0, p13

    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 145
    move-object/from16 v0, p12

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 146
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 155
    .end local v13    # "e":Landroid/text/Layout$Ellipsizer;
    :cond_0
    if-eqz p12, :cond_5

    .line 156
    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 157
    .local v18, "start":[I
    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    aput v3, v18, v2

    .line 162
    :goto_2
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    sget-object v3, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v12, v2

    .line 164
    .local v12, "dirs":[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 165
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 166
    .local v10, "asc":I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 168
    .local v11, "desc":I
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v18, v2

    .line 169
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v18, v2

    .line 170
    const/4 v2, 0x2

    aput v11, v18, v2

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 173
    const/4 v2, 0x1

    sub-int v3, v11, v10

    aput v3, v18, v2

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 179
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 181
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_7

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v2, :cond_1

    .line 183
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_1
    move-object/from16 v16, p1

    .line 186
    check-cast v16, Landroid/text/Spannable;

    .line 187
    .local v16, "sp":Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 188
    .local v17, "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v15, v2, :cond_6

    .line 189
    aget-object v2, v17, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 188
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 106
    .end local v10    # "asc":I
    .end local v11    # "desc":I
    .end local v12    # "dirs":[Landroid/text/Layout$Directions;
    .end local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v18    # "start":[I
    :cond_2
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 121
    :cond_4
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 122
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 123
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_1

    .line 159
    :cond_5
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .restart local v18    # "start":[I
    goto/16 :goto_2

    .line 191
    .restart local v10    # "asc":I
    .restart local v11    # "desc":I
    .restart local v12    # "dirs":[Landroid/text/Layout$Directions;
    .restart local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15    # "i":I
    .restart local v16    # "sp":Landroid/text/Spannable;
    .restart local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 195
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_7
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZIILandroid/text/TextUtils$TruncateAt;IIIIZ)V
    .locals 19
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "breakStrategy"    # I
    .param p11, "hyphenationFrequency"    # I
    .param p12, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p13, "ellipsizedWidth"    # I
    .param p14, "urlPadding"    # I
    .param p15, "urlPaddingVertical"    # I
    .param p16, "urlSelectedColor"    # I
    .param p17, "isLineCenterVertical"    # Z

    .prologue
    .line 209
    if-nez p12, :cond_2

    move-object/from16 v3, p2

    :goto_0
    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 216
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    .line 217
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 219
    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setUrlPadding(I)V

    .line 220
    move-object/from16 v0, p0

    move/from16 v1, p15

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setUrlPaddingVertical(I)V

    .line 221
    move-object/from16 v0, p0

    move/from16 v1, p16

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setUrlSelectedColor(I)V

    .line 222
    move-object/from16 v0, p0

    move/from16 v1, p17

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->setIsLineCenterVertical(Z)V

    .line 224
    if-eqz p12, :cond_4

    .line 225
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 226
    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 227
    move-object/from16 v0, p12

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    .line 234
    :goto_1
    new-instance v2, Landroid/text/PackedObjectVector;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/PackedObjectVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    .line 236
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/DynamicLayout;->mIncludePad:Z

    .line 237
    move/from16 v0, p10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mBreakStrategy:I

    .line 238
    move/from16 v0, p11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    .line 248
    if-eqz p12, :cond_0

    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Landroid/text/Layout$Ellipsizer;

    .line 251
    .local v13, "e":Landroid/text/Layout$Ellipsizer;
    move-object/from16 v0, p0

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 252
    move/from16 v0, p13

    iput v0, v13, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 253
    move-object/from16 v0, p12

    iput-object v0, v13, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 254
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    .line 263
    .end local v13    # "e":Landroid/text/Layout$Ellipsizer;
    :cond_0
    if-eqz p12, :cond_5

    .line 264
    const/4 v2, 0x6

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 265
    .local v18, "start":[I
    const/4 v2, 0x4

    const/high16 v3, -0x80000000

    aput v3, v18, v2

    .line 270
    :goto_2
    const/4 v2, 0x1

    new-array v12, v2, [Landroid/text/Layout$Directions;

    const/4 v2, 0x0

    sget-object v3, Landroid/text/DynamicLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    aput-object v3, v12, v2

    .line 272
    .local v12, "dirs":[Landroid/text/Layout$Directions;
    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 273
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v10, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 274
    .local v10, "asc":I
    iget v11, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 276
    .local v11, "desc":I
    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v18, v2

    .line 277
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v18, v2

    .line 278
    const/4 v2, 0x2

    aput v11, v18, v2

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 281
    const/4 v2, 0x1

    sub-int v3, v11, v10

    aput v3, v18, v2

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v12}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 287
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    .line 289
    move-object/from16 v0, p1

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_7

    .line 290
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    if-nez v2, :cond_1

    .line 291
    new-instance v2, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Landroid/text/DynamicLayout$ChangeWatcher;-><init>(Landroid/text/DynamicLayout;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    :cond_1
    move-object/from16 v16, p1

    .line 294
    check-cast v16, Landroid/text/Spannable;

    .line 295
    .local v16, "sp":Landroid/text/Spannable;
    const/4 v2, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Landroid/text/DynamicLayout$ChangeWatcher;

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/DynamicLayout$ChangeWatcher;

    .line 296
    .local v17, "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move-object/from16 v0, v17

    array-length v2, v0

    if-ge v15, v2, :cond_6

    .line 297
    aget-object v2, v17, v15

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 296
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 209
    .end local v10    # "asc":I
    .end local v11    # "desc":I
    .end local v12    # "dirs":[Landroid/text/Layout$Directions;
    .end local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    .end local v18    # "start":[I
    :cond_2
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/text/Spanned;

    if-eqz v2, :cond_3

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 229
    :cond_4
    new-instance v2, Landroid/text/PackedIntVector;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/text/PackedIntVector;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    .line 230
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    .line 231
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    goto/16 :goto_1

    .line 267
    :cond_5
    const/4 v2, 0x4

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .restart local v18    # "start":[I
    goto/16 :goto_2

    .line 299
    .restart local v10    # "asc":I
    .restart local v11    # "desc":I
    .restart local v12    # "dirs":[Landroid/text/Layout$Directions;
    .restart local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v15    # "i":I
    .restart local v16    # "sp":Landroid/text/Spannable;
    .restart local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/DynamicLayout;->mWatcher:Landroid/text/DynamicLayout$ChangeWatcher;

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const v5, 0x800012

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 303
    .end local v15    # "i":I
    .end local v16    # "sp":Landroid/text/Spannable;
    .end local v17    # "spans":[Landroid/text/DynamicLayout$ChangeWatcher;
    :cond_7
    return-void
.end method

.method static synthetic access$000(Landroid/text/DynamicLayout;Ljava/lang/CharSequence;III)V
    .locals 0
    .param p0, "x0"    # Landroid/text/DynamicLayout;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/DynamicLayout;->reflow(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method private addBlockAtOffset(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v0

    .line 538
    .local v0, "line":I
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    if-nez v2, :cond_1

    .line 540
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 541
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    aput v0, v2, v3

    .line 542
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v3, v3, -0x1

    aget v1, v2, v3

    .line 547
    .local v1, "previousBlockEndLine":I
    if-le v0, v1, :cond_0

    .line 548
    iget-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    iget v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    invoke-static {v2, v3, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v2

    iput-object v2, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 549
    iget v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    goto :goto_0
.end method

.method private createBlocks()V
    .locals 5

    .prologue
    .line 508
    const/16 v1, 0x190

    .line 509
    .local v1, "offset":I
    const/4 v3, 0x0

    iput v3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 510
    iget-object v2, p0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    .line 513
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    const/16 v3, 0xa

    invoke-static {v2, v3, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v1

    .line 514
    if-gez v1, :cond_0

    .line 515
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 524
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 525
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 526
    iget-object v3, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    const/4 v4, -0x1

    aput v4, v3, v0

    .line 525
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 518
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/text/DynamicLayout;->addBlockAtOffset(I)V

    .line 519
    add-int/lit16 v1, v1, 0x190

    goto :goto_0

    .line 528
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private reflow(Ljava/lang/CharSequence;III)V
    .locals 35
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "where"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBase:Ljava/lang/CharSequence;

    move-object/from16 v32, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 501
    :goto_0
    return-void

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mDisplay:Ljava/lang/CharSequence;

    move-object/from16 v29, v0

    .line 311
    .local v29, "text":Ljava/lang/CharSequence;
    invoke-interface/range {v29 .. v29}, Ljava/lang/CharSequence;->length()I

    move-result v20

    .line 315
    .local v20, "len":I
    const/16 v32, 0xa

    add-int/lit8 v33, p2, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v14

    .line 316
    .local v14, "find":I
    if-gez v14, :cond_4

    .line 317
    const/4 v14, 0x0

    .line 322
    :goto_1
    sub-int v10, p2, v14

    .line 323
    .local v10, "diff":I
    add-int p3, p3, v10

    .line 324
    add-int p4, p4, v10

    .line 325
    sub-int p2, p2, v10

    .line 330
    const/16 v32, 0xa

    add-int v33, p2, p4

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v21

    .line 331
    .local v21, "look":I
    if-gez v21, :cond_5

    .line 332
    move/from16 v21, v20

    .line 336
    :goto_2
    add-int v32, p2, p4

    sub-int v8, v21, v32

    .line 337
    .local v8, "change":I
    add-int p3, p3, v8

    .line 338
    add-int p4, p4, v8

    .line 342
    move-object/from16 v0, v29

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v32, v0

    if-eqz v32, :cond_7

    move-object/from16 v25, v29

    .line 343
    check-cast v25, Landroid/text/Spanned;

    .line 347
    .local v25, "sp":Landroid/text/Spanned;
    :cond_1
    const/4 v5, 0x0

    .line 349
    .local v5, "again":Z
    add-int v32, p2, p4

    const-class v33, Landroid/text/style/WrapTogetherSpan;

    move-object/from16 v0, v25

    move/from16 v1, p2

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    .line 352
    .local v15, "force":[Ljava/lang/Object;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_3
    array-length v0, v15

    move/from16 v32, v0

    move/from16 v0, v17

    move/from16 v1, v32

    if-ge v0, v1, :cond_6

    .line 353
    aget-object v32, v15, v17

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 354
    .local v26, "st":I
    aget-object v32, v15, v17

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 356
    .local v11, "en":I
    move/from16 v0, v26

    move/from16 v1, p2

    if-ge v0, v1, :cond_2

    .line 357
    const/4 v5, 0x1

    .line 359
    sub-int v10, p2, v26

    .line 360
    add-int p3, p3, v10

    .line 361
    add-int p4, p4, v10

    .line 362
    sub-int p2, p2, v10

    .line 365
    :cond_2
    add-int v32, p2, p4

    move/from16 v0, v32

    if-le v11, v0, :cond_3

    .line 366
    const/4 v5, 0x1

    .line 368
    add-int v32, p2, p4

    sub-int v10, v11, v32

    .line 369
    add-int p3, p3, v10

    .line 370
    add-int p4, p4, v10

    .line 352
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 319
    .end local v5    # "again":Z
    .end local v8    # "change":I
    .end local v10    # "diff":I
    .end local v11    # "en":I
    .end local v15    # "force":[Ljava/lang/Object;
    .end local v17    # "i":I
    .end local v21    # "look":I
    .end local v25    # "sp":Landroid/text/Spanned;
    .end local v26    # "st":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 334
    .restart local v10    # "diff":I
    .restart local v21    # "look":I
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 373
    .restart local v5    # "again":Z
    .restart local v8    # "change":I
    .restart local v15    # "force":[Ljava/lang/Object;
    .restart local v17    # "i":I
    .restart local v25    # "sp":Landroid/text/Spanned;
    :cond_6
    if-nez v5, :cond_1

    .line 378
    .end local v5    # "again":Z
    .end local v15    # "force":[Ljava/lang/Object;
    .end local v17    # "i":I
    .end local v25    # "sp":Landroid/text/Spanned;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v27

    .line 379
    .local v27, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v28

    .line 381
    .local v28, "startv":I
    add-int v32, p2, p3

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/DynamicLayout;->getLineForOffset(I)I

    move-result v12

    .line 382
    .local v12, "endline":I
    add-int v32, p2, p4

    move/from16 v0, v32

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 383
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v12

    .line 384
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/DynamicLayout;->getLineTop(I)I

    move-result v13

    .line 385
    .local v13, "endv":I
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v32

    move/from16 v0, v32

    if-ne v12, v0, :cond_10

    const/16 v19, 0x1

    .line 392
    .local v19, "islast":Z
    :goto_4
    sget-object v33, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v33

    .line 393
    :try_start_0
    sget-object v24, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 394
    .local v24, "reflowed":Landroid/text/StaticLayout;
    sget-object v6, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 395
    .local v6, "b":Landroid/text/StaticLayout$Builder;
    const/16 v32, 0x0

    sput-object v32, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 396
    const/16 v32, 0x0

    sput-object v32, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 397
    monitor-exit v33
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    if-nez v24, :cond_9

    .line 400
    new-instance v24, Landroid/text/StaticLayout;

    .end local v24    # "reflowed":Landroid/text/StaticLayout;
    const/16 v32, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;)V

    .line 401
    .restart local v24    # "reflowed":Landroid/text/StaticLayout;
    add-int v32, p2, p4

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v33

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v34

    move-object/from16 v0, v29

    move/from16 v1, p2

    move/from16 v2, v32

    move-object/from16 v3, v33

    move/from16 v4, v34

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v6

    .line 405
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getUrlPadding()I

    move-result v32

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->setUrlPadding(I)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getUrlPaddingVertical()I

    move-result v32

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->setUrlPaddingVertical(I)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getUrlSelectedColor()I

    move-result v32

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->setUrlSelectedColor(I)V

    .line 408
    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->isLineCenterVertical()Z

    move-result v32

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->setIsLineCenterVertical(Z)V

    .line 411
    add-int v32, p2, p4

    move-object/from16 v0, v29

    move/from16 v1, p2

    move/from16 v2, v32

    invoke-virtual {v6, v0, v1, v2}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingAdd()F

    move-result v33

    invoke-virtual/range {p0 .. p0}, Landroid/text/DynamicLayout;->getSpacingMultiplier()F

    move-result v34

    invoke-virtual/range {v32 .. v34}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mBreakStrategy:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v32

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mHyphenationFrequency:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    .line 420
    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v6, v1, v2}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 421
    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v22

    .line 427
    .local v22, "n":I
    add-int v32, p2, p4

    move/from16 v0, v32

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    add-int/lit8 v32, v22, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v32

    add-int v33, p2, p4

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_a

    .line 428
    add-int/lit8 v22, v22, -0x1

    .line 431
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    sub-int v33, v12, v27

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->deleteAt(II)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move-object/from16 v32, v0

    sub-int v33, v12, v27

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->deleteAt(II)V

    .line 436
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v16

    .line 437
    .local v16, "ht":I
    const/16 v31, 0x0

    .local v31, "toppad":I
    const/4 v7, 0x0

    .line 439
    .local v7, "botpad":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    move/from16 v32, v0

    if-eqz v32, :cond_b

    if-nez v27, :cond_b

    .line 440
    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getTopPadding()I

    move-result v31

    .line 441
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mTopPadding:I

    .line 442
    sub-int v16, v16, v31

    .line 444
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mIncludePad:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    if-eqz v19, :cond_c

    .line 445
    invoke-virtual/range {v24 .. v24}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v7

    .line 446
    move-object/from16 v0, p0

    iput v7, v0, Landroid/text/DynamicLayout;->mBottomPadding:I

    .line 447
    add-int v16, v16, v7

    .line 450
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    sub-int v34, p4, p3

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    sub-int v34, v28, v13

    add-int v34, v34, v16

    move-object/from16 v0, v32

    move/from16 v1, v27

    move/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PackedIntVector;->adjustValuesBelow(III)V

    .line 457
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    move/from16 v32, v0

    if-eqz v32, :cond_11

    .line 458
    const/16 v32, 0x6

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 459
    .local v18, "ints":[I
    const/16 v32, 0x4

    const/high16 v33, -0x80000000

    aput v33, v18, v32

    .line 464
    :goto_5
    const/16 v32, 0x1

    move/from16 v0, v32

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v23, v0

    .line 466
    .local v23, "objects":[Landroid/text/Layout$Directions;
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_6
    move/from16 v0, v17

    move/from16 v1, v22

    if-ge v0, v1, :cond_13

    .line 467
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v32

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getParagraphDirection(I)I

    move-result v34

    shl-int/lit8 v34, v34, 0x1e

    or-int v34, v34, v32

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineContainsTab(I)Z

    move-result v32

    if-eqz v32, :cond_12

    const/high16 v32, 0x20000000

    :goto_7
    or-int v32, v32, v34

    aput v32, v18, v33

    .line 471
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v32

    add-int v30, v32, v28

    .line 472
    .local v30, "top":I
    if-lez v17, :cond_d

    .line 473
    sub-int v30, v30, v31

    .line 474
    :cond_d
    const/16 v32, 0x1

    aput v30, v18, v32

    .line 476
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDescent(I)I

    move-result v9

    .line 477
    .local v9, "desc":I
    add-int/lit8 v32, v22, -0x1

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_e

    .line 478
    add-int/2addr v9, v7

    .line 480
    :cond_e
    const/16 v32, 0x2

    aput v9, v18, v32

    .line 481
    const/16 v32, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v33

    aput-object v33, v23, v32

    .line 483
    const/16 v32, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getHyphen(I)I

    move-result v33

    aput v33, v18, v32

    .line 485
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/DynamicLayout;->mEllipsize:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    .line 486
    const/16 v32, 0x4

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisStart(I)I

    move-result v33

    aput v33, v18, v32

    .line 487
    const/16 v32, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getEllipsisCount(I)I

    move-result v33

    aput v33, v18, v32

    .line 490
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    move-object/from16 v32, v0

    add-int v33, v27, v17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedIntVector;->insertAt(I[I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    move-object/from16 v32, v0

    add-int v33, v27, v17

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/PackedObjectVector;->insertAt(I[Ljava/lang/Object;)V

    .line 466
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 385
    .end local v6    # "b":Landroid/text/StaticLayout$Builder;
    .end local v7    # "botpad":I
    .end local v9    # "desc":I
    .end local v16    # "ht":I
    .end local v17    # "i":I
    .end local v18    # "ints":[I
    .end local v19    # "islast":Z
    .end local v22    # "n":I
    .end local v23    # "objects":[Landroid/text/Layout$Directions;
    .end local v24    # "reflowed":Landroid/text/StaticLayout;
    .end local v30    # "top":I
    .end local v31    # "toppad":I
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 397
    .restart local v19    # "islast":Z
    :catchall_0
    move-exception v32

    :try_start_1
    monitor-exit v33
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v32

    .line 461
    .restart local v6    # "b":Landroid/text/StaticLayout$Builder;
    .restart local v7    # "botpad":I
    .restart local v16    # "ht":I
    .restart local v22    # "n":I
    .restart local v24    # "reflowed":Landroid/text/StaticLayout;
    .restart local v31    # "toppad":I
    :cond_11
    const/16 v32, 0x4

    move/from16 v0, v32

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .restart local v18    # "ints":[I
    goto/16 :goto_5

    .line 467
    .restart local v17    # "i":I
    .restart local v23    # "objects":[Landroid/text/Layout$Directions;
    :cond_12
    const/16 v32, 0x0

    goto/16 :goto_7

    .line 494
    :cond_13
    add-int/lit8 v32, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v32

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/DynamicLayout;->updateBlocks(III)V

    .line 496
    invoke-virtual {v6}, Landroid/text/StaticLayout$Builder;->finish()V

    .line 497
    sget-object v33, Landroid/text/DynamicLayout;->sLock:[Ljava/lang/Object;

    monitor-enter v33

    .line 498
    :try_start_2
    sput-object v24, Landroid/text/DynamicLayout;->sStaticLayout:Landroid/text/StaticLayout;

    .line 499
    sput-object v6, Landroid/text/DynamicLayout;->sBuilder:Landroid/text/StaticLayout$Builder;

    .line 500
    monitor-exit v33

    goto/16 :goto_0

    :catchall_1
    move-exception v32

    monitor-exit v33
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v32
.end method


# virtual methods
.method public getBlockEndLines()[I
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    return-object v0
.end method

.method public getBlockIndices()[I
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    return-object v0
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Landroid/text/DynamicLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 830
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 831
    const/4 v0, 0x0

    .line 834
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 821
    iget-object v0, p0, Landroid/text/DynamicLayout;->mEllipsizeAt:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 822
    const/4 v0, 0x0

    .line 825
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 770
    iget v0, p0, Landroid/text/DynamicLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 765
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getIndexFirstChangedBlock()I
    .locals 1

    .prologue
    .line 705
    iget v0, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 737
    iget-object v1, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v1, p1, v0}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    invoke-virtual {v0}, Landroid/text/PackedIntVector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 727
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 747
    iget-object v0, p0, Landroid/text/DynamicLayout;->mObjects:Landroid/text/PackedObjectVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedObjectVector;->getValue(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 732
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 722
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    return v0
.end method

.method public getNumberOfBlocks()I
    .locals 1

    .prologue
    .line 698
    iget v0, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 742
    iget-object v0, p0, Landroid/text/DynamicLayout;->mInts:Landroid/text/PackedIntVector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/text/PackedIntVector;->getValue(II)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 752
    iget v0, p0, Landroid/text/DynamicLayout;->mTopPadding:I

    return v0
.end method

.method setBlocksDataForTest([I[II)V
    .locals 3
    .param p1, "blockEndLines"    # [I
    .param p2, "blockIndices"    # [I
    .param p3, "numberOfBlocks"    # I

    .prologue
    const/4 v2, 0x0

    .line 673
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 674
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 675
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 676
    iget-object v0, p0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 677
    iput p3, p0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 678
    return-void
.end method

.method public setIndexFirstChangedBlock(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 712
    iput p1, p0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 713
    return-void
.end method

.method updateBlocks(III)V
    .locals 24
    .param p1, "startLine"    # I
    .param p2, "endLine"    # I
    .param p3, "newLineCount"    # I

    .prologue
    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 574
    invoke-direct/range {p0 .. p0}, Landroid/text/DynamicLayout;->createBlocks()V

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    const/4 v11, -0x1

    .line 579
    .local v11, "firstBlock":I
    const/4 v13, -0x1

    .line 580
    .local v13, "lastBlock":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_2

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    move/from16 v1, p1

    if-lt v0, v1, :cond_7

    .line 582
    move v11, v12

    .line 586
    :cond_2
    move v12, v11

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_3

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v12

    move/from16 v0, v19

    move/from16 v1, p2

    if-lt v0, v1, :cond_8

    .line 588
    move v13, v12

    .line 592
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v14, v19, v13

    .line 594
    .local v14, "lastBlockEndLine":I
    if-nez v11, :cond_9

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, p1

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    const/4 v9, 0x1

    .line 596
    .local v9, "createBlockBefore":Z
    :goto_4
    if-lez p3, :cond_b

    const/4 v7, 0x1

    .line 597
    .local v7, "createBlock":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v19, v19, v13

    move/from16 v0, p2

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    const/4 v8, 0x1

    .line 599
    .local v8, "createBlockAfter":Z
    :goto_6
    const/16 v17, 0x0

    .line 600
    .local v17, "numAddedBlocks":I
    if-eqz v9, :cond_4

    add-int/lit8 v17, v17, 0x1

    .line 601
    :cond_4
    if-eqz v7, :cond_5

    add-int/lit8 v17, v17, 0x1

    .line 602
    :cond_5
    if-eqz v8, :cond_6

    add-int/lit8 v17, v17, 0x1

    .line 604
    :cond_6
    sub-int v19, v13, v11

    add-int/lit8 v18, v19, 0x1

    .line 605
    .local v18, "numRemovedBlocks":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    add-int v19, v19, v17

    sub-int v16, v19, v18

    .line 607
    .local v16, "newNumberOfBlocks":I
    if-nez v16, :cond_d

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v21, v19, v20

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, -0x1

    aput v21, v19, v20

    .line 611
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    goto/16 :goto_0

    .line 580
    .end local v7    # "createBlock":Z
    .end local v8    # "createBlockAfter":Z
    .end local v9    # "createBlockBefore":Z
    .end local v14    # "lastBlockEndLine":I
    .end local v16    # "newNumberOfBlocks":I
    .end local v17    # "numAddedBlocks":I
    .end local v18    # "numRemovedBlocks":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 586
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 594
    .restart local v14    # "lastBlockEndLine":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v11, -0x1

    aget v19, v19, v20

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :cond_a
    const/4 v9, 0x0

    goto :goto_4

    .line 596
    .restart local v9    # "createBlockBefore":Z
    :cond_b
    const/4 v7, 0x0

    goto :goto_5

    .line 597
    .restart local v7    # "createBlock":Z
    :cond_c
    const/4 v8, 0x0

    goto :goto_6

    .line 615
    .restart local v8    # "createBlockAfter":Z
    .restart local v16    # "newNumberOfBlocks":I
    .restart local v17    # "numAddedBlocks":I
    .restart local v18    # "numRemovedBlocks":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_e

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v4

    .line 618
    .local v4, "blockEndLines":[I
    array-length v0, v4

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v6, v0, [I

    .line 619
    .local v6, "blockIndices":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v4, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v6, v2, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    add-int v21, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v4, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    add-int v21, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v22, v0

    sub-int v22, v22, v13

    add-int/lit8 v22, v22, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 625
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    .line 626
    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    .line 634
    .end local v4    # "blockEndLines":[I
    .end local v6    # "blockIndices":[I
    :goto_7
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 636
    sub-int v19, p2, p1

    add-int/lit8 v19, v19, 0x1

    sub-int v10, p3, v19

    .line 637
    .local v10, "deltaLines":I
    if-eqz v10, :cond_f

    .line 640
    add-int v15, v11, v17

    .line 641
    .local v15, "newFirstChangedBlock":I
    move v12, v15

    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_10

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    aget v20, v19, v12

    add-int v20, v20, v10

    aput v20, v19, v12

    .line 641
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 628
    .end local v10    # "deltaLines":I
    .end local v15    # "newFirstChangedBlock":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v21, v0

    add-int v22, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([II[III)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v21, v0

    add-int v22, v11, v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    move/from16 v23, v0

    sub-int v23, v23, v13

    add-int/lit8 v23, v23, -0x1

    invoke-static/range {v19 .. v23}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_7

    .line 645
    .restart local v10    # "deltaLines":I
    :cond_f
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/DynamicLayout;->mNumberOfBlocks:I

    .line 647
    .restart local v15    # "newFirstChangedBlock":I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/DynamicLayout;->mIndexFirstChangedBlock:I

    .line 649
    move v5, v11

    .line 650
    .local v5, "blockIndex":I
    if-eqz v9, :cond_11

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int/lit8 v20, p1, -0x1

    aput v20, v19, v5

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    .line 653
    add-int/lit8 v5, v5, 0x1

    .line 656
    :cond_11
    if-eqz v7, :cond_12

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int v20, p1, p3

    add-int/lit8 v20, v20, -0x1

    aput v20, v19, v5

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    .line 659
    add-int/lit8 v5, v5, 0x1

    .line 662
    :cond_12
    if-eqz v8, :cond_0

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockEndLines:[I

    move-object/from16 v19, v0

    add-int v20, v14, v10

    aput v20, v19, v5

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/DynamicLayout;->mBlockIndices:[I

    move-object/from16 v19, v0

    const/16 v20, -0x1

    aput v20, v19, v5

    goto/16 :goto_0
.end method
