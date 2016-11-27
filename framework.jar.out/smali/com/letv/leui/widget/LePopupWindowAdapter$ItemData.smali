.class public Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;
.super Ljava/lang/Object;
.source "LePopupWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LePopupWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemData"
.end annotation


# instance fields
.field private hasCheckBox:Z

.field private hasSwitch:Z

.field private imgId:I

.field private isSelected:Z

.field private itemStyle:I

.field private mainText:Ljava/lang/CharSequence;

.field private subText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 406
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->mainText:Ljava/lang/CharSequence;

    .line 410
    iput-object v1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->subText:Ljava/lang/CharSequence;

    .line 411
    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->imgId:I

    .line 412
    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->isSelected:Z

    .line 413
    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->hasSwitch:Z

    .line 414
    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->hasCheckBox:Z

    return-void
.end method


# virtual methods
.method public getMainText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->mainText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStutes()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->isSelected:Z

    return v0
.end method

.method public getSubText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->subText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->subText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 419
    const/16 v0, 0xa

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->itemStyle:I

    .line 420
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->imgId:I

    if-eqz v0, :cond_0

    .line 421
    const/16 v0, 0xc

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->itemStyle:I

    .line 423
    :cond_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->hasCheckBox:Z

    if-eqz v0, :cond_1

    .line 424
    const/16 v0, 0xb

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->itemStyle:I

    .line 426
    :cond_1
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->hasCheckBox:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->hasSwitch:Z

    if-eqz v0, :cond_2

    .line 427
    const/16 v0, 0xd

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->itemStyle:I

    .line 436
    :cond_2
    :goto_0
    iget v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->itemStyle:I

    return v0

    .line 431
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->itemStyle:I

    .line 432
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->hasCheckBox:Z

    if-eqz v0, :cond_2

    .line 433
    const/4 v0, 0x1

    iput v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->itemStyle:I

    goto :goto_0
.end method

.method public ifHasCheckBox()Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->hasCheckBox:Z

    return v0
.end method

.method public setMainText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->mainText:Ljava/lang/CharSequence;

    .line 444
    return-void
.end method

.method public setStutes(Z)V
    .locals 1
    .param p1, "type"    # Z

    .prologue
    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->hasCheckBox:Z

    .line 458
    iput-boolean p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->isSelected:Z

    .line 459
    return-void
.end method

.method public setSubText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/CharSequence;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->subText:Ljava/lang/CharSequence;

    .line 451
    return-void
.end method

.method public useSwtich()V
    .locals 1

    .prologue
    .line 461
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LePopupWindowAdapter$ItemData;->hasSwitch:Z

    .line 462
    return-void
.end method
