.class public Lcom/letv/leui/widget/LeBlankPage;
.super Landroid/widget/FrameLayout;
.source "LeBlankPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeBlankPage$1;,
        Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;,
        Lcom/letv/leui/widget/LeBlankPage$Mode;
    }
.end annotation


# static fields
.field private static SCREEN_HEIGHT:I

.field private static SCREEN_WIDTH:I


# instance fields
.field private buttonBg:Landroid/graphics/drawable/Drawable;

.field private buttonTextColor:I

.field private buttonTextColorList:Landroid/content/res/ColorStateList;

.field private desView:Landroid/widget/TextView;

.field private description:Ljava/lang/CharSequence;

.field private disableColorAttr:[I

.field private hasLayout:Z

.field private hasTint:Z

.field private icon:Landroid/graphics/drawable/Drawable;

.field private iconView:Landroid/widget/ImageView;

.field private inputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mContext:Landroid/content/Context;

.field private mIsFullScreen:Z

.field private mIsShowInputMethed:Z

.field private mOrientation:I

.field private message:Ljava/lang/CharSequence;

.field private mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

.field private msgView:Landroid/widget/TextView;

.field private pressedColorAttr:[I

.field private primaryBg:Landroid/graphics/drawable/Drawable;

.field private primaryBtn:Landroid/widget/Button;

.field private primaryText:Ljava/lang/CharSequence;

.field private primaryTextColor:I

.field private primaryTextColorList:Landroid/content/res/ColorStateList;

.field private secondBg:Landroid/graphics/drawable/Drawable;

.field private secondBtn:Landroid/widget/Button;

.field private secondText:Ljava/lang/CharSequence;

.field private secondTextColor:I

.field private secondTextColorList:Landroid/content/res/ColorStateList;

.field private textPressedColor:I

.field private thirdBg:Landroid/graphics/drawable/Drawable;

.field private thirdBtn:Landroid/widget/Button;

.field private thirdText:Ljava/lang/CharSequence;

.field private thirdTextColor:I

.field private thirdTextColorList:Landroid/content/res/ColorStateList;

.field private tintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeBlankPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeBlankPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v6, -0x1

    iput v6, p0, Lcom/letv/leui/widget/LeBlankPage;->textPressedColor:I

    iput-boolean v9, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsFullScreen:Z

    new-array v6, v9, [I

    const v7, 0x10100a7

    aput v7, v6, v8

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->pressedColorAttr:[I

    new-array v6, v9, [I

    const v7, 0x101009e

    aput v7, v6, v8

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->disableColorAttr:[I

    iput-boolean v8, p0, Lcom/letv/leui/widget/LeBlankPage;->hasLayout:Z

    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/internal/R$styleable;->LeBlankPage:[I

    invoke-virtual {p1, p2, v6, v8, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .local v3, "index":I
    packed-switch v3, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->description:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_3
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->message:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_4
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryText:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_5
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->secondText:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_6
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdText:Ljava/lang/CharSequence;

    goto :goto_1

    :pswitch_7
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_8
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_9
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_a
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :pswitch_b
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :pswitch_c
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :pswitch_d
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    goto :goto_1

    :pswitch_e
    iget v6, p0, Lcom/letv/leui/widget/LeBlankPage;->textPressedColor:I

    invoke-virtual {v0, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/LeBlankPage;->textPressedColor:I

    goto :goto_1

    :pswitch_f
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    iput-boolean v9, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    goto :goto_1

    :pswitch_10
    invoke-virtual {v0, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsShowInputMethed:Z

    goto :goto_1

    :pswitch_11
    invoke-virtual {v0, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsFullScreen:Z

    goto :goto_1

    .end local v3    # "index":I
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v6, p0, Lcom/letv/leui/widget/LeBlankPage;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/letv/leui/widget/LeBlankPage;->mOrientation:I

    const-string v6, "window"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .local v5, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .local v4, "mDisplay":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    sput v6, Lcom/letv/leui/widget/LeBlankPage;->SCREEN_WIDTH:I

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    sput v6, Lcom/letv/leui/widget/LeBlankPage;->SCREEN_HEIGHT:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->loadLayout()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_f
        :pswitch_e
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private isEmptyText(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutUI()V
    .locals 12

    .prologue
    const-wide v10, 0x3fe0a3d70a3d70a4L    # 0.52

    const/4 v8, 0x1

    const v7, 0x10203d1

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .local v0, "blankLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v7

    div-int/lit8 v1, v7, 0x2

    .local v1, "halfBlankLayout":I
    const/4 v7, 0x2

    new-array v4, v7, [I

    .local v4, "position":[I
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v4, v8

    .local v2, "marginScreenTop":I
    if-ltz v2, :cond_0

    iput-boolean v8, p0, Lcom/letv/leui/widget/LeBlankPage;->hasLayout:Z

    const/4 v6, 0x0

    .local v6, "topMargin":I
    iget v7, p0, Lcom/letv/leui/widget/LeBlankPage;->mOrientation:I

    if-ne v7, v8, :cond_2

    sget v5, Lcom/letv/leui/widget/LeBlankPage;->SCREEN_HEIGHT:I

    .local v5, "screenPortraitHeight":I
    iget-boolean v7, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsShowInputMethed:Z

    if-nez v7, :cond_1

    sget-object v7, Lcom/letv/leui/widget/LeBlankPage$1;->$SwitchMap$com$letv$leui$widget$LeBlankPage$Mode:[I

    iget-object v8, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeBlankPage$Mode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :goto_0
    iget-boolean v7, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsFullScreen:Z

    if-eqz v7, :cond_0

    sub-int v7, v6, v1

    sub-int/2addr v7, v2

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v5    # "screenPortraitHeight":I
    .end local v6    # "topMargin":I
    :cond_0
    return-void

    .restart local v5    # "screenPortraitHeight":I
    .restart local v6    # "topMargin":I
    :pswitch_0
    int-to-double v8, v5

    const-wide v10, 0x3fdeb851eb851eb8L    # 0.48

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_0

    :pswitch_1
    int-to-double v8, v5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_0

    :pswitch_2
    int-to-double v8, v5

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_0

    :cond_1
    int-to-double v8, v5

    const-wide v10, 0x3fd70a3d70a3d70aL    # 0.36

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_0

    .end local v5    # "screenPortraitHeight":I
    :cond_2
    sget v5, Lcom/letv/leui/widget/LeBlankPage;->SCREEN_WIDTH:I

    .restart local v5    # "screenPortraitHeight":I
    iget-boolean v7, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsShowInputMethed:Z

    if-nez v7, :cond_3

    sget-object v7, Lcom/letv/leui/widget/LeBlankPage$1;->$SwitchMap$com$letv$leui$widget$LeBlankPage$Mode:[I

    iget-object v8, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    invoke-virtual {v8}, Lcom/letv/leui/widget/LeBlankPage$Mode;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    int-to-double v8, v5

    const-wide v10, 0x3fe0f5c28f5c28f6L    # 0.53

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_0

    :pswitch_4
    int-to-double v8, v5

    const-wide v10, 0x3fe147ae147ae148L    # 0.54

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_0

    :pswitch_5
    int-to-double v8, v5

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_0

    :cond_3
    int-to-double v8, v5

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    double-to-int v6, v8

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private loadLayout()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->removeAllViews()V

    const/4 v0, 0x2

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->mOrientation:I

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109007e

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :goto_0
    const v0, 0x1020006

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->iconView:Landroid/widget/ImageView;

    const v0, 0x102000b

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->msgView:Landroid/widget/TextView;

    const v0, 0x1020376

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->desView:Landroid/widget/TextView;

    const v0, 0x10203d3

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    const v0, 0x10203d4

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    const v0, 0x10203d5

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    :cond_5
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109007f

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0
.end method

.method private matchColorAttr([I[I)Z
    .locals 4
    .param p1, "src"    # [I
    .param p2, "des"    # [I

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_3

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    aget v3, p2, v0

    if-eq v2, v3, :cond_0

    aget v2, p1, v1

    aget v3, p2, v0

    neg-int v3, v3

    if-ne v2, v3, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    .end local v1    # "j":I
    :goto_2
    return v2

    .restart local v1    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "j":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_2
.end method

.method private tintDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method private tintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 7
    .param p1, "colorStateList"    # Landroid/content/res/ColorStateList;

    .prologue
    const-string v3, "mColors"

    invoke-static {p1, v3}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    .local v0, "colors":[I
    const-string v3, "mStateSpecs"

    invoke-static {p1, v3}, Lcom/letv/leui/util/LeReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[I

    move-object v2, v3

    check-cast v2, [[I

    .local v2, "stateSpecs":[[I
    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_4

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    aget-object v3, v2, v1

    array-length v3, v3

    if-nez v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    aput v3, v0, v1

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v3, v2, v1

    iget-object v4, p0, Lcom/letv/leui/widget/LeBlankPage;->pressedColorAttr:[I

    invoke-direct {p0, v3, v4}, Lcom/letv/leui/widget/LeBlankPage;->matchColorAttr([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/letv/leui/widget/LeBlankPage;->textPressedColor:I

    aput v3, v0, v1

    goto :goto_1

    :cond_3
    aget-object v3, v2, v1

    iget-object v4, p0, Lcom/letv/leui/widget/LeBlankPage;->disableColorAttr:[I

    invoke-direct {p0, v3, v4}, Lcom/letv/leui/widget/LeBlankPage;->matchColorAttr([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x7d

    iget v4, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    iget v5, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    aput v3, v0, v1

    goto :goto_1

    .end local v1    # "i":I
    :cond_4
    const-string v3, "mColors"

    invoke-static {p1, v3, v0}, Lcom/letv/leui/util/LeReflectionUtils;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private updateBtnBg()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private updateBtnText()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    :goto_0
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_2
    :goto_1
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->tintTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_b
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method


# virtual methods
.method public clearTint()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    return-void
.end method

.method public forceInvalidateUI()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBlankPage;->hasLayout:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->requestLayout()V

    return-void
.end method

.method public getButtonBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    return v0
.end method

.method public getButtonTextColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getDesView()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->desView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->description:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->iconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->message:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMsgView()Landroid/widget/TextView;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->msgView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrimaryBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPrimaryBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getPrimaryText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPrimaryTextColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    return v0
.end method

.method public getPrimaryTextColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSecondBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSecondBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getSecondText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSecondTextColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    return v0
.end method

.method public getSecondTextColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThirdBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThirdBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getThirdText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThirdTextColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    return v0
.end method

.method public getThirdTextColorList()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTintColor()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    return v0
.end method

.method public invalidateUI()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->DEFAULT:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->iconView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->iconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->msgView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->isEmptyText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->isEmptyText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->isEmptyText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->description:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeBlankPage;->isEmptyText(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->desView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->PRI_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->secondText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->SEC_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->THIR_BTN:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->desView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->desView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->description:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/letv/leui/widget/LeBlankPage$Mode;->PRI_BTN_WITH_DES:Lcom/letv/leui/widget/LeBlankPage$Mode;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mode:Lcom/letv/leui/widget/LeBlankPage$Mode;

    goto :goto_4
.end method

.method public isFullScreen(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsFullScreen:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->forceInvalidateUI()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->mOrientation:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->loadLayout()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->forceInvalidateUI()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeBlankPage;->hasLayout:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->layoutUI()V

    :cond_0
    return-void
.end method

.method public setButtonBg(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "buttonBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonBg:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 2
    .param p1, "buttonTextColor"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput p1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    iput v1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    iput v1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    iput v1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    return-void
.end method

.method public setButtonTextColorList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "buttonTextColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColorList:Landroid/content/res/ColorStateList;

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->buttonTextColor:I

    iput-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->description:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->message:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    return-void
.end method

.method public setPrimaryBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "primaryBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    return-void
.end method

.method public setPrimaryOnClickAndLongClickListener(Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "primaryText"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    return-void
.end method

.method public setPrimaryTextColor(I)V
    .locals 1
    .param p1, "primaryTextColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    return-void
.end method

.method public setPrimaryTextColorList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "primaryTextColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColorList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->primaryTextColor:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    return-void
.end method

.method public setSecondBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "secondBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    return-void
.end method

.method public setSecondOnClickAndLongClickListener(Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setSecondText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "secondText"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    return-void
.end method

.method public setSecondTextColor(I)V
    .locals 1
    .param p1, "secondTextColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    return-void
.end method

.method public setSecondTextColorList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "secondTextColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColorList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->secondTextColor:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    return-void
.end method

.method public setShowInputMethed(Z)V
    .locals 0
    .param p1, "isShow"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeBlankPage;->mIsShowInputMethed:Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->forceInvalidateUI()V

    return-void
.end method

.method public setThirdBg(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thirdBg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBg:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    return-void
.end method

.method public setThirdOnClickAndLongClickListener(Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/letv/leui/widget/LeBlankPage$OnClickAndLongClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setThirdText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "thirdText"    # Ljava/lang/CharSequence;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeBlankPage;->invalidateUI()V

    return-void
.end method

.method public setThirdTextColor(I)V
    .locals 1
    .param p1, "thirdTextColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    return-void
.end method

.method public setThirdTextColorList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "thirdTextColorList"    # Landroid/content/res/ColorStateList;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColorList:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/LeBlankPage;->thirdTextColor:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    return-void
.end method

.method public setTintColor(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeBlankPage;->tintColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeBlankPage;->hasTint:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnBg()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeBlankPage;->updateBtnText()V

    return-void
.end method
