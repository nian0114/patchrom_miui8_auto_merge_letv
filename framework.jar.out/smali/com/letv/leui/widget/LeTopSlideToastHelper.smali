.class public Lcom/letv/leui/widget/LeTopSlideToastHelper;
.super Ljava/lang/Object;
.source "LeTopSlideToastHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;
    }
.end annotation


# static fields
.field private static final CONTENT_TEXT_DOUBLELINE_WIDTH:F = 0.8f

.field private static final CONTENT_TEXT_SINGlELINE_WIDTH:F = 0.88f

.field private static final CONTENT_TEXT_SIZE_DP:F = 13.0f

.field public static final LENGTH_LONG:I = 0xdac

.field public static final LENGTH_SHORT:I = 0x7d0

.field public static final TOAST_HEIGTH_DP_HIGH:I = 0x48

.field public static final TOAST_HEIGTH_DP_LOW:I = 0x40

.field private static density:F

.field private static screenWidth:I


# instance fields
.field private animStyleId:I

.field private callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

.field private duration:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mShowWhenLocked:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private final timerRunnable:Ljava/lang/Runnable;

.field private toastView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->duration:I

    const v1, 0x1030004

    iput v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->animStyleId:I

    new-instance v1, Lcom/letv/leui/widget/LeTopSlideToastHelper$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeTopSlideToastHelper$1;-><init>(Lcom/letv/leui/widget/LeTopSlideToastHelper;)V

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "ctx":Landroid/content/Context;
    if-nez v0, :cond_0

    move-object v0, p1

    :cond_0
    iput-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lcom/letv/leui/widget/LeTopSlideToastHelper;->density:F

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/letv/leui/widget/LeTopSlideToastHelper;->screenWidth:I

    invoke-direct {p0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->init()V

    return-void
.end method

.method private static dip2px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    sget v0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getToastHelper(Landroid/content/Context;ILandroid/view/View;Lcom/letv/leui/widget/LeTopSlideToastCallback;)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "callback"    # Lcom/letv/leui/widget/LeTopSlideToastCallback;

    .prologue
    if-eqz p2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/letv/leui/widget/LeTopSlideToastHelper;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;-><init>(Landroid/content/Context;)V

    .local v0, "helper":Lcom/letv/leui/widget/LeTopSlideToastHelper;
    invoke-virtual {v0, p3}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setCallback(Lcom/letv/leui/widget/LeTopSlideToastCallback;)V

    invoke-virtual {v0, p2}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setView(Landroid/view/View;)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    invoke-virtual {v0, p1}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setDuration(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    const v1, 0x1030529

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setAnimation(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    goto :goto_0
.end method

.method public static getToastHelper(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/letv/leui/widget/LeTopSlideToastCallback;)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "btn_text"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/view/View$OnClickListener;
    .param p6, "callback"    # Lcom/letv/leui/widget/LeTopSlideToastCallback;

    .prologue
    sget-object v7, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;->LEFT:Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v7}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->getToastHelper(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/letv/leui/widget/LeTopSlideToastCallback;Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    move-result-object v0

    return-object v0
.end method

.method public static getToastHelper(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/letv/leui/widget/LeTopSlideToastCallback;Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "duration"    # I
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "btn_text"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/view/View$OnClickListener;
    .param p6, "callback"    # Lcom/letv/leui/widget/LeTopSlideToastCallback;
    .param p7, "contentAlign"    # Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    .prologue
    if-nez p2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lcom/letv/leui/widget/LeTopSlideToastHelper;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;-><init>(Landroid/content/Context;)V

    .local v2, "helper":Lcom/letv/leui/widget/LeTopSlideToastHelper;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x10900ed

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .local v4, "toast":Landroid/view/View;
    const v9, 0x10204aa

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .local v7, "toast_img":Landroid/widget/ImageView;
    const v9, 0x10204a9

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .local v8, "toast_text":Landroid/widget/TextView;
    const v9, 0x10204ab

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, "toast_btn":Landroid/widget/TextView;
    const v9, 0x10204ac

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .local v6, "toast_divider":Landroid/widget/ImageView;
    if-nez p3, :cond_3

    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .local v3, "paint":Landroid/graphics/Paint;
    const/high16 v9, 0x41500000    # 13.0f

    invoke-static {v9}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->dip2px(F)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .local v1, "TextWidth":F
    sget v9, Lcom/letv/leui/widget/LeTopSlideToastHelper;->screenWidth:I

    int-to-float v9, v9

    const v10, 0x3f6147ae    # 0.88f

    mul-float/2addr v9, v10

    cmpl-float v9, v1, v9

    if-lez v9, :cond_4

    sget v9, Lcom/letv/leui/widget/LeTopSlideToastHelper;->screenWidth:I

    int-to-float v9, v9

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    :goto_2
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v9, Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;->CENTER:Lcom/letv/leui/widget/LeTopSlideToastHelper$ContentTextAlign;

    move-object/from16 v0, p7

    if-ne v0, v9, :cond_1

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setGravity(I)V

    :cond_1
    if-nez p4, :cond_5

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v9, 0x8

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_3
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setCallback(Lcom/letv/leui/widget/LeTopSlideToastCallback;)V

    invoke-virtual {v2, v4}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setView(Landroid/view/View;)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setDuration(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    const v9, 0x1030529

    invoke-virtual {v2, v9}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->setAnimation(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    goto/16 :goto_0

    .end local v1    # "TextWidth":F
    .end local v3    # "paint":Landroid/graphics/Paint;
    :cond_3
    invoke-virtual {v7, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .restart local v1    # "TextWidth":F
    .restart local v3    # "paint":Landroid/graphics/Paint;
    :cond_4
    sget v9, Lcom/letv/leui/widget/LeTopSlideToastHelper;->screenWidth:I

    int-to-float v9, v9

    const v10, 0x3f6147ae    # 0.88f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p5, :cond_2

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method private init()V
    .locals 2

    .prologue
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x88

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x42900000    # 72.0f

    invoke-static {v1}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "ToastHelper"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->animStyleId:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-void
.end method


# virtual methods
.method public getToastView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    return-object v0
.end method

.method public getmWindowParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public removeView()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->timerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeTopSlideToastCallback;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setAnimation(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 2
    .param p1, "animStyleId"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->animStyleId:I

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->animStyleId:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object p0
.end method

.method public setCallback(Lcom/letv/leui/widget/LeTopSlideToastCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/letv/leui/widget/LeTopSlideToastCallback;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

    return-void
.end method

.method public setDuration(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 0
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->duration:I

    return-object p0
.end method

.method public setShowWhenLocked(Z)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 0
    .param p1, "showWhenLocked"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mShowWhenLocked:Z

    return-object p0
.end method

.method public setToastHeight(I)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 2
    .param p1, "heightDip"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    int-to-float v1, p1

    invoke-static {v1}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->dip2px(F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    return-object p0
.end method

.method public show()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->removeView()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mShowWhenLocked:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    :goto_1
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->toastView:Landroid/view/View;

    iget-object v2, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mHandler:Landroid/os/Handler;

    :cond_2
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->timerRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->duration:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->callback:Lcom/letv/leui/widget/LeTopSlideToastCallback;

    invoke-interface {v0}, Lcom/letv/leui/widget/LeTopSlideToastCallback;->onShow()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/letv/leui/widget/LeTopSlideToastHelper;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    goto :goto_1
.end method
