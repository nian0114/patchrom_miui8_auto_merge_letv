.class public Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;
.super Landroid/text/style/TypefaceSpan;
.source "LeTextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeTextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeTypefaceSpan"
.end annotation


# instance fields
.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/os/Parcel;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;->mTextSize:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "family"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;->mTextSize:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .param p1, "family"    # Ljava/lang/String;
    .param p2, "textSize"    # F

    .prologue
    invoke-direct {p0, p1}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;->mTextSize:F

    invoke-virtual {p0, p2}, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public setTextSize(F)V
    .locals 0
    .param p1, "size"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;->mTextSize:F

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    iget v0, p0, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_0
    invoke-super {p0, p1}, Landroid/text/style/TypefaceSpan;->updateDrawState(Landroid/text/TextPaint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    iget v0, p0, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;->mTextSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/letv/leui/util/LeTextUtils$LeTypefaceSpan;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_0
    invoke-super {p0, p1}, Landroid/text/style/TypefaceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    return-void
.end method
