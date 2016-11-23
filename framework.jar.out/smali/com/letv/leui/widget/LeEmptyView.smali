.class public Lcom/letv/leui/widget/LeEmptyView;
.super Landroid/widget/LinearLayout;
.source "LeEmptyView.java"


# static fields
.field private static final DEFAULT_PORT_TOP_PERCENT:F = 0.28f

.field private static final DISABLED_ALPHA:I = 0x4c

.field private static final PRESS_ALPHA:I = 0xb2


# instance fields
.field private SCREEN_HEIGHT:F

.field private SCREEN_WIDTH:F

.field private STROKE_WIDTH:I

.field private mActionType:I

.field private mButtonColor:I

.field private mButtonDisableColor:I

.field private mButtonPressColor:I

.field private mContext:Landroid/content/Context;

.field private mDesView:Landroid/widget/TextView;

.field private mDesc:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/view/View;

.field private mIsFullScreen:Z

.field private mMsg:Ljava/lang/CharSequence;

.field private mMsgView:Landroid/widget/TextView;

.field private mOrientation:I

.field private mPrimaryBtn:Landroid/widget/Button;

.field private mPrimaryText:Ljava/lang/CharSequence;

.field private mPromptColor:I

.field private mSecondBtn:Landroid/widget/Button;

.field private mSecondText:Ljava/lang/CharSequence;

.field private mThirdBtn:Landroid/widget/Button;

.field private mThirdText:Ljava/lang/CharSequence;

.field private mVerticalHeight:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/LeEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput-object p1, p0, Lcom/letv/leui/widget/LeEmptyView;->mContext:Landroid/content/Context;

    .line 67
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v5, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/letv/leui/widget/LeEmptyView;->STROKE_WIDTH:I

    .line 70
    iget-object v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/internal/R$styleable;->LeEmptyView:[I

    invoke-virtual {v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->initAttr(Landroid/content/res/TypedArray;)V

    .line 72
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    const-string v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 76
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 77
    .local v1, "mDisplay":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/letv/leui/widget/LeEmptyView;->SCREEN_WIDTH:F

    .line 78
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/letv/leui/widget/LeEmptyView;->SCREEN_HEIGHT:F

    .line 79
    iget-object v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mOrientation:I

    .line 81
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeEmptyView;->setOrientation(I)V

    .line 82
    invoke-virtual {p0, v5}, Lcom/letv/leui/widget/LeEmptyView;->setGravity(I)V

    .line 83
    iget-object v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x10900ac

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 85
    const v3, 0x1020006

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mIconView:Landroid/view/View;

    .line 86
    const v3, 0x1020444

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mDesView:Landroid/widget/TextView;

    .line 87
    const v3, 0x1020445

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mMsgView:Landroid/widget/TextView;

    .line 88
    const v3, 0x10203dc

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mPrimaryBtn:Landroid/widget/Button;

    .line 89
    const v3, 0x10203dd

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mSecondBtn:Landroid/widget/Button;

    .line 90
    const v3, 0x10203de

    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/LeEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mThirdBtn:Landroid/widget/Button;

    .line 92
    invoke-direct {p0}, Lcom/letv/leui/widget/LeEmptyView;->initUI()V

    .line 93
    iget-object v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/letv/leui/widget/LeEmptyView;->mActionType:I

    invoke-static {v3, v4, p0}, Lcom/letv/leui/widget/LeEmptyViewHelper;->initViewAction(Landroid/content/Context;ILcom/letv/leui/widget/LeEmptyView;)V

    .line 94
    return-void
.end method

.method private caculateYOffset()F
    .locals 6

    .prologue
    const v5, 0x3e8f5c29    # 0.28f

    .line 162
    iget-boolean v3, p0, Lcom/letv/leui/widget/LeEmptyView;->mIsFullScreen:Z

    if-eqz v3, :cond_0

    .line 163
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 164
    .local v0, "mScreenLocation":[I
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->getLocationOnScreen([I)V

    .line 165
    const/4 v3, 0x1

    aget v2, v0, v3

    .line 169
    .end local v0    # "mScreenLocation":[I
    .local v2, "y":I
    :goto_0
    int-to-float v3, v2

    iget v4, p0, Lcom/letv/leui/widget/LeEmptyView;->mVerticalHeight:F

    div-float v1, v3, v4

    .line 170
    .local v1, "verticalTopPercent":F
    cmpl-float v3, v1, v5

    if-nez v3, :cond_1

    .line 171
    const/4 v3, 0x0

    .line 173
    :goto_1
    return v3

    .line 167
    .end local v1    # "verticalTopPercent":F
    .end local v2    # "y":I
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEmptyView;->getY()F

    move-result v3

    float-to-int v2, v3

    .restart local v2    # "y":I
    goto :goto_0

    .line 173
    .restart local v1    # "verticalTopPercent":F
    :cond_1
    int-to-float v3, v2

    iget v4, p0, Lcom/letv/leui/widget/LeEmptyView;->mVerticalHeight:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    goto :goto_1
.end method

.method private getAlphaColor(II)I
    .locals 3
    .param p1, "original"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 246
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private initAttr(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 117
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mDesc:Ljava/lang/CharSequence;

    .line 118
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mMsg:Ljava/lang/CharSequence;

    .line 119
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mPrimaryText:Ljava/lang/CharSequence;

    .line 120
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mSecondText:Ljava/lang/CharSequence;

    .line 121
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mThirdText:Ljava/lang/CharSequence;

    .line 122
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060194

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mPromptColor:I

    .line 125
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEmptyView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    .line 128
    iget v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    const/16 v1, 0xb2

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeEmptyView;->getAlphaColor(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonPressColor:I

    .line 129
    iget v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeEmptyView;->getAlphaColor(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonDisableColor:I

    .line 130
    const/16 v0, 0x8

    invoke-virtual {p1, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIsFullScreen:Z

    .line 131
    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mActionType:I

    .line 132
    return-void
.end method

.method private initUI()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mMsg:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->setMessage(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mDesc:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->setDescription(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mPrimaryText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mSecondText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->setSecondText(Ljava/lang/CharSequence;)V

    .line 143
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mThirdText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->setThirdText(Ljava/lang/CharSequence;)V

    .line 145
    iget v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mPromptColor:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->setPromptColor(I)V

    .line 146
    iget v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->setButtonColor(I)V

    .line 147
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "content"    # Ljava/lang/CharSequence;

    .prologue
    .line 214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 218
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private syncVerticalHeight()V
    .locals 2

    .prologue
    .line 150
    iget v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 151
    iget v0, p0, Lcom/letv/leui/widget/LeEmptyView;->SCREEN_HEIGHT:F

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mVerticalHeight:F

    .line 155
    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIsFullScreen:Z

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEmptyView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mVerticalHeight:F

    .line 158
    :cond_0
    return-void

    .line 153
    :cond_1
    iget v0, p0, Lcom/letv/leui/widget/LeEmptyView;->SCREEN_WIDTH:F

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mVerticalHeight:F

    goto :goto_0
.end method

.method private updateBtnColor(Landroid/widget/Button;)V
    .locals 14
    .param p1, "btn"    # Landroid/widget/Button;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 255
    new-array v7, v13, [[I

    new-array v8, v11, [I

    const v9, 0x10100a7

    aput v9, v8, v10

    aput-object v8, v7, v10

    new-array v8, v11, [I

    const v9, -0x101009e

    aput v9, v8, v10

    aput-object v8, v7, v11

    new-array v8, v10, [I

    aput-object v8, v7, v12

    .line 261
    .local v7, "states":[[I
    new-array v1, v13, [I

    iget v8, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    aput v8, v1, v10

    iget v8, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonDisableColor:I

    aput v8, v1, v11

    iget v8, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    aput v8, v1, v12

    .line 266
    .local v1, "colors":[I
    new-instance v8, Landroid/content/res/ColorStateList;

    invoke-direct {v8, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p1, v8}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 268
    invoke-virtual {p1}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/StateListDrawable;

    .line 269
    .local v6, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    invoke-virtual {v6}, Landroid/graphics/drawable/StateListDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;

    .line 270
    .local v3, "drawableContainerState":Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;
    invoke-virtual {v3}, Landroid/graphics/drawable/DrawableContainer$DrawableContainerState;->getChildren()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 271
    .local v0, "children":[Landroid/graphics/drawable/Drawable;
    aget-object v5, v0, v10

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    .line 272
    .local v5, "pressDrawable":Landroid/graphics/drawable/GradientDrawable;
    aget-object v2, v0, v11

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    .line 273
    .local v2, "disableDrawable":Landroid/graphics/drawable/GradientDrawable;
    aget-object v4, v0, v12

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 274
    .local v4, "normalDrawable":Landroid/graphics/drawable/GradientDrawable;
    iget v8, p0, Lcom/letv/leui/widget/LeEmptyView;->STROKE_WIDTH:I

    iget v9, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    invoke-virtual {v5, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 275
    iget v8, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonPressColor:I

    invoke-virtual {v5, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 276
    iget v8, p0, Lcom/letv/leui/widget/LeEmptyView;->STROKE_WIDTH:I

    iget v9, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonDisableColor:I

    invoke-virtual {v2, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 277
    iget v8, p0, Lcom/letv/leui/widget/LeEmptyView;->STROKE_WIDTH:I

    iget v9, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    invoke-virtual {v4, v8, v9}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 278
    invoke-virtual {p1, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 279
    return-void
.end method


# virtual methods
.method public getIconView()Landroid/view/View;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIconView:Landroid/view/View;

    return-object v0
.end method

.method public getPrimaryBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mPrimaryBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getSecondBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mSecondBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public getThirdBtn()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mThirdBtn:Landroid/widget/Button;

    return-object v0
.end method

.method public isFullScreen(Z)V
    .locals 0
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeEmptyView;->mIsFullScreen:Z

    .line 242
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEmptyView;->forceLayout()V

    .line 243
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 109
    iget v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 110
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mOrientation:I

    .line 111
    invoke-direct {p0}, Lcom/letv/leui/widget/LeEmptyView;->syncVerticalHeight()V

    .line 113
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 98
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 100
    invoke-direct {p0}, Lcom/letv/leui/widget/LeEmptyView;->syncVerticalHeight()V

    .line 101
    invoke-direct {p0}, Lcom/letv/leui/widget/LeEmptyView;->caculateYOffset()F

    move-result v0

    .line 102
    .local v0, "yOffset":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeEmptyView;->getY()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LeEmptyView;->setY(F)V

    .line 105
    :cond_0
    return-void
.end method

.method public setButtonColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    .line 233
    iget v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    const/16 v1, 0xb2

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeEmptyView;->getAlphaColor(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonPressColor:I

    .line 234
    iget v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonColor:I

    const/16 v1, 0x4c

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeEmptyView;->getAlphaColor(II)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mButtonDisableColor:I

    .line 235
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mPrimaryBtn:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->updateBtnColor(Landroid/widget/Button;)V

    .line 236
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mSecondBtn:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->updateBtnColor(Landroid/widget/Button;)V

    .line 237
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mThirdBtn:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->updateBtnColor(Landroid/widget/Button;)V

    .line 238
    return-void
.end method

.method public setDescription(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/letv/leui/widget/LeEmptyView;->mDesc:Ljava/lang/CharSequence;

    .line 190
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mDesView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mDesc:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeEmptyView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method public setEmptyViewStyle(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 282
    iget-object v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->LeEmptyView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 283
    .local v0, "ta":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LeEmptyView;->initAttr(Landroid/content/res/TypedArray;)V

    .line 284
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    invoke-direct {p0}, Lcom/letv/leui/widget/LeEmptyView;->initUI()V

    .line 287
    iget-object v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/letv/leui/widget/LeEmptyView;->mActionType:I

    invoke-static {v1, v2, p0}, Lcom/letv/leui/widget/LeEmptyViewHelper;->initViewAction(Landroid/content/Context;ILcom/letv/leui/widget/LeEmptyView;)V

    .line 288
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/letv/leui/widget/LeEmptyView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 180
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIconView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIconView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mPromptColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 185
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIconView:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/letv/leui/widget/LeEmptyView;->mMsg:Ljava/lang/CharSequence;

    .line 194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mMsgView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mMsgView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mMsgView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setPrimaryText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "primaryText"    # Ljava/lang/CharSequence;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/letv/leui/widget/LeEmptyView;->mPrimaryText:Ljava/lang/CharSequence;

    .line 203
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mPrimaryBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mPrimaryText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeEmptyView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method public setPromptColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/letv/leui/widget/LeEmptyView;->mPromptColor:I

    .line 224
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mPromptColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mMsgView:Landroid/widget/TextView;

    iget v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mPromptColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 228
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mDesView:Landroid/widget/TextView;

    iget v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mPromptColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 229
    return-void
.end method

.method public setSecondText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "secondText"    # Ljava/lang/CharSequence;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/letv/leui/widget/LeEmptyView;->mSecondText:Ljava/lang/CharSequence;

    .line 207
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mSecondBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mSecondText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeEmptyView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 208
    return-void
.end method

.method public setThirdText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "thirdText"    # Ljava/lang/CharSequence;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/letv/leui/widget/LeEmptyView;->mThirdText:Ljava/lang/CharSequence;

    .line 211
    iget-object v0, p0, Lcom/letv/leui/widget/LeEmptyView;->mThirdBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/letv/leui/widget/LeEmptyView;->mThirdText:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/letv/leui/widget/LeEmptyView;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 212
    return-void
.end method
