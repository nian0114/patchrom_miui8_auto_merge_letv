.class public Lcom/letv/leui/widget/LeButton;
.super Landroid/widget/Button;
.source "LeButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeButton$1;,
        Lcom/letv/leui/widget/LeButton$DefStyle;
    }
.end annotation


# static fields
.field private static final BTN_BLUE:I = -0xdc6a12

.field private static final BTN_WHITE:I = -0x1


# instance fields
.field private defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

.field private hasDefStyle:Z

.field private mhasStroke:Z

.field private minusColor:I

.field private myColor:I

.field private nombg_color:I

.field private nombg_roundRadius:I

.field private nombg_strokeColor:I

.field private nombg_strokeWidth:I

.field private normal_bg:Landroid/graphics/drawable/GradientDrawable;

.field private press_bg:Landroid/graphics/drawable/GradientDrawable;

.field private prsbg_color:I

.field private prsbg_roundRadius:I

.field private prsbg_strokeColor:I

.field private prsbg_strokeWidth:I

.field private textColor:I

.field private unable_bg:Landroid/graphics/drawable/GradientDrawable;

.field private unable_color:I

.field private unable_roundRadius:I

.field private unable_strokeColor:I

.field private unable_strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    sget-object v0, Lcom/letv/leui/widget/LeButton$DefStyle;->DEF:Lcom/letv/leui/widget/LeButton$DefStyle;

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    const v0, -0xdc6a12

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    const v0, 0x101010

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    sget-object v0, Lcom/letv/leui/widget/LeButton$DefStyle;->DEF:Lcom/letv/leui/widget/LeButton$DefStyle;

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    const v0, -0xdc6a12

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    const v0, 0x101010

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dp"    # F

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeButton;->getContext()Landroid/content/Context;

    move-result-object v1

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

.method private setBtnBackgroud()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .local v0, "bg_list":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    const v2, 0x101009e

    aput v2, v1, v3

    iget-object v2, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v4, [I

    const v2, -0x101009e

    aput v2, v1, v3

    iget-object v2, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method private setDefBGStyle()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    sget-object v0, Lcom/letv/leui/widget/LeButton$1;->$SwitchMap$com$letv$leui$widget$LeButton$DefStyle:[I

    iget-object v1, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeButton$DefStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeButton;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_roundRadius:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_roundRadius:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_roundRadius:I

    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeButton;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeWidth:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeWidth:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeWidth:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->nombg_roundRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->prsbg_roundRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->unable_roundRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    invoke-super {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    return-void

    :pswitch_0
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    const/high16 v0, 0x16000000

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    goto/16 :goto_0

    :pswitch_1
    iput v2, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    const/high16 v1, -0x4e000000

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    goto/16 :goto_0

    :pswitch_2
    iput v2, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    const/high16 v0, 0x19000000

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    const v0, -0x1f1f1d

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    const v0, -0xb5b3ae

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LeButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setAlpha(F)V

    goto :goto_0
.end method

.method public getNormalBackgroud()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getPressBackgroud()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getUnableBackgroud()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setCustomColor(I)V
    .locals 4
    .param p1, "myColor"    # I

    .prologue
    const/high16 v3, 0x100000

    move v1, p1

    .local v1, "tempcolor":I
    rem-int/lit16 v0, v1, 0x100

    .local v0, "temp":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    add-int/lit8 v2, v2, -0x10

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    sub-int/2addr v1, v0

    :cond_0
    const/high16 v2, 0x10000

    rem-int v0, v1, v2

    const/16 v2, 0x1000

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    add-int/lit16 v2, v2, -0x1000

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    sub-int/2addr v1, v0

    :cond_1
    const/high16 v2, 0x1000000

    rem-int v0, v1, v2

    if-ge v0, v3, :cond_2

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    :cond_2
    const/high16 v2, -0x1000000

    or-int/2addr p1, v2

    iput p1, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    return-void
.end method

.method public setDefBGStyleMode(Lcom/letv/leui/widget/LeButton$DefStyle;)V
    .locals 0
    .param p1, "defStyle"    # Lcom/letv/leui/widget/LeButton$DefStyle;

    .prologue
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-direct {p0}, Lcom/letv/leui/widget/LeButton;->setDefBGStyle()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LeButton;->setBtnBackgroud()V

    :cond_0
    return-void
.end method

.method public setHasStroke(Z)V
    .locals 0
    .param p1, "hasStroke"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    return-void
.end method
