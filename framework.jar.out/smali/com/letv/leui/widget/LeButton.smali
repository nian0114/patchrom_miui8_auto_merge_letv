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
.field private static final BTN_BLANK:I = -0x1000000

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

.field uiModeManager:Landroid/app/UiModeManager;

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
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    .line 35
    sget-object v0, Lcom/letv/leui/widget/LeButton$DefStyle;->DEF:Lcom/letv/leui/widget/LeButton$DefStyle;

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    .line 36
    const v0, -0xdc6a12

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    .line 37
    const v0, 0x101010

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    .line 76
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 77
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 78
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 109
    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->uiModeManager:Landroid/app/UiModeManager;

    .line 110
    const v0, 0x1060120

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    .line 35
    sget-object v0, Lcom/letv/leui/widget/LeButton$DefStyle;->DEF:Lcom/letv/leui/widget/LeButton$DefStyle;

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    .line 36
    const v0, -0xdc6a12

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    .line 37
    const v0, 0x101010

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    .line 76
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 77
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 78
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    .line 117
    const v0, 0x1060120

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    .line 119
    return-void
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dp"    # F

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 206
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

    .line 95
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 96
    .local v0, "bg_list":Landroid/graphics/drawable/StateListDrawable;
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 97
    new-array v1, v4, [I

    const v2, 0x101009e

    aput v2, v1, v3

    iget-object v2, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 98
    new-array v1, v4, [I

    const v2, -0x101009e

    aput v2, v1, v3

    iget-object v2, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void

    .line 96
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data
.end method

.method private setDefBGStyle()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/high16 v4, -0x1000000

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    .line 123
    sget-object v0, Lcom/letv/leui/widget/LeButton$1;->$SwitchMap$com$letv$leui$widget$LeButton$DefStyle:[I

    iget-object v1, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeButton$DefStyle;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    .line 155
    :goto_0
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->hasDefStyle:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeButton;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_roundRadius:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_roundRadius:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_roundRadius:I

    .line 158
    invoke-direct {p0, v3}, Lcom/letv/leui/widget/LeButton;->dip2px(F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeWidth:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeWidth:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeWidth:I

    .line 160
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->nombg_roundRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 163
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 164
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->prsbg_roundRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 166
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 167
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->unable_roundRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 170
    iget-boolean v0, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 172
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 173
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeWidth:I

    iget v2, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 177
    :cond_0
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    invoke-super {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 180
    :cond_1
    return-void

    .line 125
    :pswitch_0
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    .line 126
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iget v1, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    .line 127
    const/high16 v0, 0x16000000

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    .line 128
    iput v2, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    goto/16 :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->uiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getOledMode()I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 132
    iput v4, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v4, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    .line 137
    :goto_1
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    const/high16 v1, -0x4e000000

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    .line 138
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    .line 139
    iget v0, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    goto/16 :goto_0

    .line 134
    :cond_2
    iput v2, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    goto :goto_1

    .line 142
    :pswitch_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->uiModeManager:Landroid/app/UiModeManager;

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getOledMode()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 143
    iput v4, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v4, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    .line 147
    :goto_2
    const/high16 v0, 0x19000000

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_color:I

    .line 148
    const v0, -0x1f1f1d

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->unable_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->prsbg_strokeColor:I

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->nombg_strokeColor:I

    .line 149
    const v0, -0xb5b3ae

    iput v0, p0, Lcom/letv/leui/widget/LeButton;->textColor:I

    goto/16 :goto_0

    .line 145
    :cond_3
    iput v2, p0, Lcom/letv/leui/widget/LeButton;->unable_color:I

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->nombg_color:I

    goto :goto_2

    .line 123
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
    .line 184
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 185
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setAlpha(F)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LeButton;->setAlpha(F)V

    goto :goto_0
.end method

.method public getNormalBackgroud()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->normal_bg:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getPressBackgroud()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->press_bg:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getUnableBackgroud()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/letv/leui/widget/LeButton;->unable_bg:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 194
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 201
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 194
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

    .line 54
    move v1, p1

    .line 55
    .local v1, "tempcolor":I
    rem-int/lit16 v0, v1, 0x100

    .local v0, "temp":I
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 56
    iget v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    add-int/lit8 v2, v2, -0x10

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    .line 57
    sub-int/2addr v1, v0

    .line 59
    :cond_0
    const/high16 v2, 0x10000

    rem-int v0, v1, v2

    const/16 v2, 0x1000

    if-ge v0, v2, :cond_1

    .line 60
    iget v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    add-int/lit16 v2, v2, -0x1000

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    .line 61
    sub-int/2addr v1, v0

    .line 63
    :cond_1
    const/high16 v2, 0x1000000

    rem-int v0, v1, v2

    if-ge v0, v3, :cond_2

    .line 64
    iget v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/letv/leui/widget/LeButton;->minusColor:I

    .line 67
    :cond_2
    const/high16 v2, -0x1000000

    or-int/2addr p1, v2

    .line 68
    iput p1, p0, Lcom/letv/leui/widget/LeButton;->myColor:I

    .line 69
    return-void
.end method

.method public setDefBGStyleMode(Lcom/letv/leui/widget/LeButton$DefStyle;)V
    .locals 0
    .param p1, "defStyle"    # Lcom/letv/leui/widget/LeButton$DefStyle;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    iput-object p1, p0, Lcom/letv/leui/widget/LeButton;->defStyle:Lcom/letv/leui/widget/LeButton$DefStyle;

    .line 44
    invoke-direct {p0}, Lcom/letv/leui/widget/LeButton;->setDefBGStyle()V

    .line 45
    invoke-direct {p0}, Lcom/letv/leui/widget/LeButton;->setBtnBackgroud()V

    .line 47
    :cond_0
    return-void
.end method

.method public setHasStroke(Z)V
    .locals 0
    .param p1, "hasStroke"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeButton;->mhasStroke:Z

    .line 74
    return-void
.end method
