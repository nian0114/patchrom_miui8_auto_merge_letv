.class public Lcom/letv/leui/util/LeLinkify$LeURLSpan;
.super Landroid/text/style/URLSpan;
.source "LeLinkify.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/LeLinkify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeURLSpan"
.end annotation


# instance fields
.field public extraPaddingEnd:F

.field public extraPaddingStart:F

.field private mLinkColor:I

.field private mLinkSpec:Lcom/letv/leui/util/LinkSpec;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/text/style/URLSpan;-><init>(Landroid/os/Parcel;)V

    iput v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->extraPaddingStart:F

    iput v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->extraPaddingEnd:F

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    if-nez v0, :cond_0

    new-instance v0, Lcom/letv/leui/util/LinkSpec;

    invoke-direct {v0}, Lcom/letv/leui/util/LinkSpec;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/LinkSpec;->start:I

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/LinkSpec;->end:I

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/LinkSpec;->type:I

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/letv/leui/util/LinkSpec;->color:I

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->color:I

    iput v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    return-void
.end method

.method public constructor <init>(Lcom/letv/leui/util/LinkSpec;)V
    .locals 2
    .param p1, "linkSpec"    # Lcom/letv/leui/util/LinkSpec;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p1, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iput v1, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->extraPaddingStart:F

    iput v1, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->extraPaddingEnd:F

    iput-object p1, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, p1, Lcom/letv/leui/util/LinkSpec;->color:I

    iput v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getEndOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->end:I

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    const/16 v0, 0x19

    return v0
.end method

.method public getStartOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->start:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget-object v0, v0, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget-object v0, v0, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getURLType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->type:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    instance-of v0, p1, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;

    invoke-interface {v0, p1, p0}, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;->onClick(Landroid/view/View;Lcom/letv/leui/util/LeLinkify$LeURLSpan;)Z

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .local v0, "handled":Z
    instance-of v1, p1, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;

    invoke-interface {v1, p1, p0}, Lcom/letv/leui/util/LeLinkify$OnURLClickListener;->onLongClick(Landroid/view/View;Lcom/letv/leui/util/LeLinkify$LeURLSpan;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    iget v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/text/TextPaint;->linkColor:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void

    :cond_0
    iget v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    goto :goto_0
.end method

.method public updateDrawState(Lcom/letv/leui/text/LeTextPaint;Z)V
    .locals 2
    .param p1, "ds"    # Lcom/letv/leui/text/LeTextPaint;
    .param p2, "isPressed"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget v0, p1, Lcom/letv/leui/text/LeTextPaint;->linkSelectedColor:I

    invoke-virtual {p1, v0}, Lcom/letv/leui/text/LeTextPaint;->setColor(I)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/letv/leui/text/LeTextPaint;->setUnderlineText(Z)V

    return-void

    :cond_0
    iget v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p1, Lcom/letv/leui/text/LeTextPaint;->linkColor:I

    :goto_1
    invoke-virtual {p1, v0}, Lcom/letv/leui/text/LeTextPaint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkColor:I

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/text/style/URLSpan;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->end:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget v0, v0, Lcom/letv/leui/util/LinkSpec;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget-object v0, v0, Lcom/letv/leui/util/LinkSpec;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/letv/leui/util/LeLinkify$LeURLSpan;->mLinkSpec:Lcom/letv/leui/util/LinkSpec;

    iget-object v0, v0, Lcom/letv/leui/util/LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
