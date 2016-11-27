.class public Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;
.super Ljava/lang/Object;
.source "LeTextOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeTextOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapShotPopupWindow"
.end annotation


# static fields
.field private static final SNAPSHOT_BORDER_COLOR:I = -0x4b4643

.field private static final SNAPSHOT_BORDER_RADIUS:I = 0x2

.field private static final SNAPSHOT_OFFSET:I = 0x9

.field private static final SNAPSHOT_RADIUS:I = 0xb4

.field private static final SNAPSHOT_SHADOWS_OFFSET_Y:I = 0xc


# instance fields
.field protected mContentView:Landroid/view/ViewGroup;

.field protected mContext:Landroid/content/Context;

.field private mImageView:Lcom/letv/leui/widget/BorderedCircleImageView;

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mPivotX:I

.field private mPivotY:I

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mPreOffset:I

.field private mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

.field private mSnapZoomMultiplier:F

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;F)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "snapZoomMultiplier"    # F

    .prologue
    const/4 v5, -0x2

    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    .line 579
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mInflater:Landroid/view/LayoutInflater;

    .line 581
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 582
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 583
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 584
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 586
    invoke-direct {p0}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->onCreateContentView()Landroid/view/View;

    move-result-object v0

    .line 587
    .local v0, "contentView":Landroid/view/View;
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 588
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 589
    iput-object p1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mTextView:Landroid/widget/TextView;

    .line 590
    iput p2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapZoomMultiplier:F

    .line 591
    return-void
.end method

.method private computeLocalWidthOffset(IIII)V
    .locals 8
    .param p1, "offset"    # I
    .param p2, "posY"    # I
    .param p3, "viewportToContentHorizontalOffset"    # I
    .param p4, "viewportToContentVerticalOffset"    # I

    .prologue
    const/4 v7, 0x0

    .line 671
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v5

    .line 673
    .local v5, "width":I
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 674
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    .line 675
    .local v3, "offsetPosX":F
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 677
    .local v1, "line":I
    invoke-static {v0, p1}, Lcom/letv/leui/text/LeTextOpt;->isLineEndOffset(Landroid/text/Layout;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 678
    if-lez v1, :cond_0

    add-int/lit8 v1, v1, -0x1

    .line 679
    :cond_0
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    float-to-int v6, v6

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    .line 680
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    .line 685
    :goto_0
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    add-int/2addr v6, p3

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    .line 686
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    add-int/2addr v6, p3

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    .line 687
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    if-gez v6, :cond_1

    .line 688
    iput v7, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    .line 691
    :cond_1
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    if-gez v6, :cond_2

    .line 692
    iput v7, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    .line 695
    :cond_2
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 696
    .local v2, "lineTop":I
    iget-object v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 697
    .local v4, "paint":Landroid/text/TextPaint;
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4}, Landroid/text/TextPaint;->ascent()F

    move-result v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/high16 v7, 0x41400000    # 12.0f

    add-float/2addr v6, v7

    const/high16 v7, 0x41100000    # 9.0f

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    .line 699
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    add-int/2addr v6, p4

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    .line 701
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    add-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, p4

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotY:I

    .line 704
    iget v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    add-int/2addr v6, p2

    if-gez v6, :cond_3

    .line 705
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x9

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    .line 707
    :cond_3
    return-void

    .line 682
    .end local v2    # "lineTop":I
    .end local v4    # "paint":Landroid/text/TextPaint;
    :cond_4
    float-to-int v6, v3

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    .line 683
    div-int/lit8 v6, v5, 0x2

    int-to-float v6, v6

    sub-float v6, v3, v6

    float-to-int v6, v6

    iput v6, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    goto :goto_0
.end method

.method private onCreateContentView()Landroid/view/View;
    .locals 8

    .prologue
    const/high16 v7, -0x80000000

    const/4 v6, -0x2

    .line 594
    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 595
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    new-instance v2, Lcom/letv/leui/widget/BorderedCircleImageView;

    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/letv/leui/widget/BorderedCircleImageView;-><init>(Landroid/content/Context;)V

    .line 596
    .local v2, "imageView":Lcom/letv/leui/widget/BorderedCircleImageView;
    const/16 v5, 0xb6

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/BorderedCircleImageView;->setCircleRadius(I)V

    .line 597
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBorderWidth(I)V

    .line 598
    const v5, -0x4b4643

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/BorderedCircleImageView;->setBorderColor(I)V

    .line 599
    sget-object v5, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v5}, Lcom/letv/leui/widget/BorderedCircleImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 601
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x1

    invoke-direct {v4, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 605
    .local v4, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v4}, Lcom/letv/leui/widget/BorderedCircleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 608
    new-instance v0, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 609
    .local v0, "boundView":Landroid/widget/ImageView;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 614
    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 615
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 618
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 619
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 620
    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/FrameLayout;->measure(II)V

    .line 622
    iput-object v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mImageView:Lcom/letv/leui/widget/BorderedCircleImageView;

    .line 623
    iput-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 624
    return-object v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 711
    return-void
.end method

.method public getSnapShotCatcher()Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;
    .locals 3

    .prologue
    .line 637
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    if-nez v0, :cond_0

    .line 638
    new-instance v0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0x168

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;-><init>(Landroid/view/View;I)V

    iput-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected showAtLocation(Landroid/view/View;II)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "positionX"    # I
    .param p3, "positionY"    # I

    .prologue
    const/4 v1, -0x1

    .line 721
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p2, p3, v1, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 728
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 725
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method

.method public showAtOffset(IIIII)V
    .locals 4
    .param p1, "offset"    # I
    .param p2, "posX"    # I
    .param p3, "posY"    # I
    .param p4, "viewportToContentHorizontalOffset"    # I
    .param p5, "viewportToContentVerticalOffset"    # I

    .prologue
    .line 646
    iget v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPreOffset:I

    if-ne v1, p1, :cond_0

    .line 662
    :goto_0
    return-void

    .line 649
    :cond_0
    iput p1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPreOffset:I

    .line 650
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->computeLocalWidthOffset(IIII)V

    .line 653
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->getSnapShotCatcher()Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    move-result-object v0

    .line 654
    .local v0, "catcher":Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;
    invoke-virtual {v0}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    .line 655
    iget v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapZoomMultiplier:F

    # invokes: Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->initBitmap(F)V
    invoke-static {v0, v1}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->access$000(Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;F)V

    .line 658
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->updatePosition(II)V

    .line 659
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    iget v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotX:I

    iget v3, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPivotY:I

    # invokes: Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->createSnapShot(II)V
    invoke-static {v1, v2, v3}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->access$100(Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;II)V

    .line 661
    invoke-virtual {p0}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->updateZoomImage()V

    goto :goto_0
.end method

.method protected updatePosition(II)V
    .locals 3
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 714
    iget v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionX:I

    add-int v0, p1, v2

    .line 715
    .local v0, "positionX":I
    iget v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mPositionY:I

    add-int v1, p2, v2

    .line 717
    .local v1, "positionY":I
    iget-object v2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v0, v1}, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->showAtLocation(Landroid/view/View;II)V

    .line 718
    return-void
.end method

.method public updateZoomImage()V
    .locals 2

    .prologue
    .line 628
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mImageView:Lcom/letv/leui/widget/BorderedCircleImageView;

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mSnapShotCatcher:Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;

    invoke-virtual {v1}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 630
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 631
    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotPopupWindow;->mImageView:Lcom/letv/leui/widget/BorderedCircleImageView;

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/BorderedCircleImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 634
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
