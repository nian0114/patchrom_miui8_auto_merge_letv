.class public Lcom/letv/leui/util/LeTextUtils;
.super Ljava/lang/Object;
.source "LeTextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;
    }
.end annotation


# static fields
.field public static final BOLD:I = 0x4

.field public static final LEUI_COLOR_SPAN:I = 0x1a

.field public static final LEURL_SPAN:I = 0x19

.field public static final LIGHT:I = 0x1

.field public static final MEDIUM:I = 0x3

.field public static final NORMAL:I = 0x2

.field public static final PATTERN_CJK:Ljava/util/regex/Pattern;

.field public static final THIN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "[\u2e80-\u2eff\u3000-\u303f\u31c0-\u31ef\u3200-\u32ff\u3300-\u33ff\u3400-\u4dbf\u4e00-\u9fff\uf900-\ufaff\ufe30-\ufe4f\uff00-\uffef]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/LeTextUtils;->PATTERN_CJK:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final applyTypeface(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "fontFamily"    # Ljava/lang/String;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, p1, p2, v0}, Lcom/letv/leui/util/LeTextUtils;->applyTypeface(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;F)V

    return-void
.end method

.method public static final applyTypeface(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;F)V
    .locals 5
    .param p0, "s"    # Landroid/text/Spannable;
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "fontFamily"    # Ljava/lang/String;
    .param p3, "textSize"    # F

    .prologue
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .local v1, "m":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .local v3, "start":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .local v0, "end":I
    new-instance v2, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;

    invoke-direct {v2, p2, p3}, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;-><init>(Ljava/lang/String;F)V

    .local v2, "span":Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;
    const/16 v4, 0x21

    invoke-interface {p0, v2, v3, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .end local v0    # "end":I
    .end local v2    # "span":Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;
    .end local v3    # "start":I
    :cond_0
    return-void
.end method

.method public static convertCJKTypeface(Landroid/text/Spannable;Ljava/lang/String;)Landroid/text/Spannable;
    .locals 1
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "cjkFontFamily"    # Ljava/lang/String;

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {p0, p1, v0}, Lcom/letv/leui/util/LeTextUtils;->convertCJKTypeface(Landroid/text/Spannable;Ljava/lang/String;F)Landroid/text/Spannable;

    move-result-object v0

    return-object v0
.end method

.method public static convertCJKTypeface(Landroid/text/Spannable;Ljava/lang/String;F)Landroid/text/Spannable;
    .locals 5
    .param p0, "text"    # Landroid/text/Spannable;
    .param p1, "cjkFontFamily"    # Ljava/lang/String;
    .param p2, "textSize"    # F

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v3

    const-class v4, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;

    invoke-interface {p0, v2, v3, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;

    .local v1, "old":[Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;
    array-length v2, v1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/letv/leui/util/LeTextUtils;->PATTERN_CJK:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, p1, p2}, Lcom/letv/leui/util/LeTextUtils;->applyTypeface(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;F)V

    .end local v0    # "i":I
    .end local v1    # "old":[Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;
    :cond_1
    return-object p0
.end method

.method public static isHandlePositionVisible(Landroid/widget/TextView;[FFF)Z
    .locals 11
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "tempPosition"    # [F
    .param p2, "positionX"    # F
    .param p3, "positionY"    # F

    .prologue
    monitor-enter p1

    move-object v6, p1

    .local v6, "position":[F
    const/4 v8, 0x0

    :try_start_0
    aput p2, v6, v8

    const/4 v8, 0x1

    aput p3, v6, v8

    move-object v7, p0

    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    .local v2, "paddingLeft":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    .local v3, "paddingRight":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    .local v4, "paddingTop":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    .local v1, "paddingBottom":I
    add-int/lit8 v8, v2, -0x1

    int-to-float v8, v8

    cmpg-float v8, p2, v8

    if-ltz v8, :cond_0

    int-to-float v8, v4

    cmpg-float v8, p3, v8

    if-ltz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-gtz v8, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v1

    int-to-float v8, v8

    cmpl-float v8, p3, v8

    if-lez v8, :cond_3

    :cond_0
    const/4 v8, 0x0

    monitor-exit p1

    :goto_0
    return v8

    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->mapPoints([F)V

    :cond_2
    const/4 v8, 0x0

    aget v9, v6, v8

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v6, v8

    const/4 v8, 0x1

    aget v9, v6, v8

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v9, v10

    aput v9, v6, v8

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .local v5, "parent":Landroid/view/ViewParent;
    instance-of v8, v5, Landroid/view/View;

    if-eqz v8, :cond_6

    move-object v0, v5

    check-cast v0, Landroid/view/View;

    move-object v7, v0

    .end local v5    # "parent":Landroid/view/ViewParent;
    :cond_3
    :goto_1
    if-eqz v7, :cond_8

    if-eq v7, p0, :cond_4

    const/4 v8, 0x0

    aget v9, v6, v8

    invoke-virtual {v7}, Landroid/view/View;->getScrollX()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    aput v9, v6, v8

    const/4 v8, 0x1

    aget v9, v6, v8

    invoke-virtual {v7}, Landroid/view/View;->getScrollY()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    aput v9, v6, v8

    :cond_4
    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_5

    const/4 v8, 0x1

    aget v8, v6, v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_5

    const/4 v8, 0x0

    aget v8, v6, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_5

    const/4 v8, 0x1

    aget v8, v6, v8

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v9

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    :cond_5
    const/4 v8, 0x0

    monitor-exit p1

    goto :goto_0

    .end local v1    # "paddingBottom":I
    .end local v2    # "paddingLeft":I
    .end local v3    # "paddingRight":I
    .end local v4    # "paddingTop":I
    .end local v7    # "view":Landroid/view/View;
    :catchall_0
    move-exception v8

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v1    # "paddingBottom":I
    .restart local v2    # "paddingLeft":I
    .restart local v3    # "paddingRight":I
    .restart local v4    # "paddingTop":I
    .restart local v5    # "parent":Landroid/view/ViewParent;
    .restart local v7    # "view":Landroid/view/View;
    :cond_6
    if-nez v5, :cond_7

    :try_start_1
    instance-of v8, v7, Landroid/view/View;

    if-eqz v8, :cond_7

    const/4 v8, 0x0

    monitor-exit p1

    goto/16 :goto_0

    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .end local v5    # "parent":Landroid/view/ViewParent;
    :cond_8
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public static isInputExtractEditText(Landroid/widget/TextView;)Z
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;

    .prologue
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    return v0
.end method

.method public static removeLeTypefaceSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    instance-of v3, p0, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    instance-of v3, p0, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/text/Spannable;

    .local v1, "spannable":Landroid/text/Spannable;
    :goto_0
    const/4 v3, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;

    invoke-interface {v1, v3, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;

    .local v2, "spans":[Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v3, v2, v0

    invoke-interface {v1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "spannable":Landroid/text/Spannable;
    .end local v2    # "spans":[Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "spannable":Landroid/text/Spannable;
    move-object p0, v1

    goto :goto_0

    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_1
    return-object p0
.end method
