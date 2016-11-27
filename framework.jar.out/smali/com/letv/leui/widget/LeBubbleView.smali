.class public Lcom/letv/leui/widget/LeBubbleView;
.super Landroid/widget/RelativeLayout;
.source "LeBubbleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBubbleView$2;,
        Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;
    }
.end annotation


# static fields
.field public static final STYLE_DARK:I = 0x1

.field public static final STYLE_LIGHT:I = 0x2

.field public static final STYLE_OTHER:I = 0x3


# instance fields
.field protected arrowDirection:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

.field protected arrowImage:Landroid/widget/ImageView;

.field protected backgroundColor:I

.field protected conRl:Landroid/widget/RelativeLayout;

.field protected curStyle:I

.field protected mArrowOffset:I

.field protected mContext:Landroid/content/Context;

.field protected norDrawable:Lcom/letv/leui/widget/TintedBitmapDrawable;

.field protected pressBackgroundColor:I

.field protected pressDrawable:Lcom/letv/leui/widget/TintedBitmapDrawable;

.field protected relative:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/letv/leui/widget/LeBubbleView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeBubbleView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/letv/leui/widget/LeBubbleView;->initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initContent(FIIFLjava/lang/String;)V
    .locals 10
    .param p1, "radius"    # F
    .param p2, "backgroundColor"    # I
    .param p3, "textColor"    # I
    .param p4, "textSize"    # F
    .param p5, "content"    # Ljava/lang/String;

    .prologue
    new-instance v7, Landroid/widget/RelativeLayout;

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->setId(I)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v2, "conRlParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v5, Lcom/letv/leui/widget/LeRoundRectDrawable2;

    invoke-direct {v5, p2, p1}, Lcom/letv/leui/widget/LeRoundRectDrawable2;-><init>(IF)V

    .local v5, "roundRectDrawable":Lcom/letv/leui/widget/LeRoundRectDrawable2;
    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p5}, Lcom/letv/leui/widget/LeBubbleView;->initChildView(FIIFLjava/lang/String;)V

    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleView;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .local v0, "arrowParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v7, Lcom/letv/leui/widget/LeBubbleView$2;->$SwitchMap$com$letv$leui$widget$LeBubbleView$ArrowDirection:[I

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowDirection:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    const/4 v3, 0x0

    .local v3, "r":I
    const/16 v7, 0x11

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getId()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    const v1, 0x1080527

    .local v1, "arrowRes":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBubbleView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .local v6, "source":Landroid/graphics/Bitmap;
    int-to-float v7, v3

    invoke-virtual {p0, v6, v7}, Lcom/letv/leui/widget/LeBubbleView;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "rotateBitmap":Landroid/graphics/Bitmap;
    new-instance v7, Lcom/letv/leui/widget/TintedBitmapDrawable;

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-direct {v7, v8, v4, p2}, Lcom/letv/leui/widget/TintedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)V

    iput-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->norDrawable:Lcom/letv/leui/widget/TintedBitmapDrawable;

    new-instance v7, Lcom/letv/leui/widget/TintedBitmapDrawable;

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/letv/leui/widget/LeBubbleView;->pressBackgroundColor:I

    invoke-direct {v7, v8, v4, v9}, Lcom/letv/leui/widget/TintedBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;I)V

    iput-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->pressDrawable:Lcom/letv/leui/widget/TintedBitmapDrawable;

    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleView;->norDrawable:Lcom/letv/leui/widget/TintedBitmapDrawable;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v7, v0}, Lcom/letv/leui/widget/LeBubbleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v7, v2}, Lcom/letv/leui/widget/LeBubbleView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    new-instance v7, Lcom/letv/leui/widget/LeBubbleView$1;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8, p2}, Lcom/letv/leui/widget/LeBubbleView$1;-><init>(Lcom/letv/leui/widget/LeBubbleView;II)V

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeBubbleView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, p0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeBubbleView;->setClickable(Z)V

    return-void

    .end local v1    # "arrowRes":I
    .end local v3    # "r":I
    .end local v4    # "rotateBitmap":Landroid/graphics/Bitmap;
    .end local v6    # "source":Landroid/graphics/Bitmap;
    :pswitch_0
    const/16 v3, 0xb4

    .restart local v3    # "r":I
    const/16 v7, 0x11

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .end local v3    # "r":I
    :pswitch_1
    const/16 v3, 0x10e

    .restart local v3    # "r":I
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getId()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    .end local v3    # "r":I
    :pswitch_2
    const/16 v3, 0x5a

    .restart local v3    # "r":I
    const/4 v7, 0x3

    iget-object v8, p0, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getId()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initialize(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBubbleView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/R$styleable;->LeBubbleTextView:[I

    const v2, 0x103052d

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .local v6, "a":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .local v1, "radius":F
    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeBubbleView;->backgroundColor:I

    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeBubbleView;->pressBackgroundColor:I

    const/4 v0, 0x3

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .local v3, "textColor":I
    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    .local v4, "textSize":F
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "contentText":Ljava/lang/String;
    const/4 v0, 0x6

    const/4 v2, 0x3

    invoke-virtual {v6, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .local v7, "intDirection":I
    invoke-direct {p0, v7}, Lcom/letv/leui/widget/LeBubbleView;->setCurDirection(I)V

    const/4 v0, 0x7

    const/4 v2, 0x1

    const/4 v9, 0x1

    const v10, 0x3e99999a    # 0.3f

    invoke-virtual {v6, v0, v2, v9, v10}, Landroid/content/res/TypedArray;->getFraction(IIIF)F

    move-result v8

    .local v8, "relativePosition":F
    invoke-direct {p0, v8}, Lcom/letv/leui/widget/LeBubbleView;->setRelativePosition(F)V

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeBubbleView;->setCurThemeStyle(I)V

    invoke-virtual {p0, p2, p3, v6}, Lcom/letv/leui/widget/LeBubbleView;->onInitialize(Landroid/util/AttributeSet;ILandroid/content/res/TypedArray;)V

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    iget v2, p0, Lcom/letv/leui/widget/LeBubbleView;->backgroundColor:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/LeBubbleView;->initContent(FIIFLjava/lang/String;)V

    return-void
.end method

.method private setCurDirection(I)V
    .locals 1
    .param p1, "intDirection"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->LEFT:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowDirection:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->TOP:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowDirection:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->RIGHT:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowDirection:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->BOTTOM:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowDirection:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setRelativePosition(F)V
    .locals 3
    .param p1, "relativePosition"    # F

    .prologue
    const v2, 0x3f4ccccd    # 0.8f

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v0, p1, v1

    if-gez v0, :cond_0

    iput v1, p0, Lcom/letv/leui/widget/LeBubbleView;->relative:F

    :goto_0
    return-void

    :cond_0
    cmpl-float v0, p1, v2

    if-lez v0, :cond_1

    iput v2, p0, Lcom/letv/leui/widget/LeBubbleView;->relative:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/letv/leui/widget/LeBubbleView;->relative:F

    goto :goto_0
.end method


# virtual methods
.method protected dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/LeBubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getArrowDirection()Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowDirection:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    return-object v0
.end method

.method public getArrowOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBubbleView;->mArrowOffset:I

    return v0
.end method

.method public getRelative()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBubbleView;->relative:F

    return v0
.end method

.method protected initChildView(FIIFLjava/lang/String;)V
    .locals 0
    .param p1, "radius"    # F
    .param p2, "backgroundColor"    # I
    .param p3, "textColor"    # I
    .param p4, "textSize"    # F
    .param p5, "content"    # Ljava/lang/String;

    .prologue
    return-void
.end method

.method protected onInitialize(Landroid/util/AttributeSet;ILandroid/content/res/TypedArray;)V
    .locals 0
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "a"    # Landroid/content/res/TypedArray;

    .prologue
    return-void
.end method

.method protected onPostCallBack(II)V
    .locals 0
    .param p1, "conRlw"    # I
    .param p2, "conRlh"    # I

    .prologue
    return-void
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "angle"    # F

    .prologue
    const/4 v1, 0x0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .local v1, "conRlw":I
    iget-object v3, p0, Lcom/letv/leui/widget/LeBubbleView;->conRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .local v0, "conRlh":I
    iget-object v3, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v3, Lcom/letv/leui/widget/LeBubbleView$2;->$SwitchMap$com$letv$leui$widget$LeBubbleView$ArrowDirection:[I

    iget-object v4, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowDirection:Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;

    invoke-virtual {v4}, Lcom/letv/leui/widget/LeBubbleView$ArrowDirection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    int-to-float v3, v0

    iget v4, p0, Lcom/letv/leui/widget/LeBubbleView;->relative:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/LeBubbleView;->mArrowOffset:I

    iget v3, p0, Lcom/letv/leui/widget/LeBubbleView;->mArrowOffset:I

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/letv/leui/widget/LeBubbleView;->onPostCallBack(II)V

    return-void

    :pswitch_0
    int-to-float v3, v1

    iget v4, p0, Lcom/letv/leui/widget/LeBubbleView;->relative:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lcom/letv/leui/widget/LeBubbleView;->arrowImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/LeBubbleView;->mArrowOffset:I

    iget v3, p0, Lcom/letv/leui/widget/LeBubbleView;->mArrowOffset:I

    invoke-virtual {v2, v3, v5, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCurThemeStyle(I)V
    .locals 3
    .param p1, "textColor"    # I

    .prologue
    const-string v2, "#CCFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .local v0, "darkColor":I
    const-string v2, "#CC323C49"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .local v1, "lightColor":I
    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    iput v2, p0, Lcom/letv/leui/widget/LeBubbleView;->curStyle:I

    :goto_0
    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    const/4 v2, 0x2

    iput v2, p0, Lcom/letv/leui/widget/LeBubbleView;->curStyle:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    iput v2, p0, Lcom/letv/leui/widget/LeBubbleView;->curStyle:I

    goto :goto_0
.end method
