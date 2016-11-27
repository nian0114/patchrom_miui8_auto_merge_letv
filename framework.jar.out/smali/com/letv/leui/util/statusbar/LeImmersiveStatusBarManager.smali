.class public Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;
.super Ljava/lang/Object;
.source "LeImmersiveStatusBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final LEUI_IMMERSIVE_STATUSBAR_ENABLE:Z = true

.field private static final TAG:Ljava/lang/String; = "ImmersiveStatusBar"


# instance fields
.field private isCheck:Z

.field private isSetStatusBar:Z

.field private mActivity:Landroid/app/Activity;

.field private mObserver:Landroid/view/ViewTreeObserver;

.field private mPickerColorUtils:Lcom/letv/leui/util/statusbar/PickerColorUtils;

.field private mView:Landroid/view/View;

.field private mWindow:Landroid/view/Window;

.field private myOnWindowFocusChangeListener:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mWindow:Landroid/view/Window;

    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mObserver:Landroid/view/ViewTreeObserver;

    iput-boolean v1, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isCheck:Z

    iput-boolean v1, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isSetStatusBar:Z

    new-instance v0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;-><init>(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;)V

    iput-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->myOnWindowFocusChangeListener:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;

    new-instance v0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$1;-><init>(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)V

    iput-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mPickerColorUtils:Lcom/letv/leui/util/statusbar/PickerColorUtils;

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->setImmersiveStatusBarColor(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isCheck:Z

    return v0
.end method

.method static synthetic access$300(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isSetStatusBar:Z

    return v0
.end method

.method static synthetic access$302(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isSetStatusBar:Z

    return p1
.end method

.method static synthetic access$400(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isSetStatusBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Landroid/view/ViewTreeObserver;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic access$502(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;
    .param p1, "x1"    # Landroid/view/ViewTreeObserver;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$600(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->myOnWindowFocusChangeListener:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;)Lcom/letv/leui/util/statusbar/PickerColorUtils;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mPickerColorUtils:Lcom/letv/leui/util/statusbar/PickerColorUtils;

    return-object v0
.end method

.method private isSetStatusBar()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    const/4 v4, 0x0

    .local v4, "isSet":Z
    iget-object v7, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    if-lez v7, :cond_0

    iget-object v7, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    if-gtz v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget-object v7, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attributes":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .local v2, "flag":I
    iget-object v7, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v7}, Landroid/view/Window;->getStatusBarColor()I

    move-result v1

    .local v1, "bg":I
    const/high16 v7, 0x4000000

    and-int/2addr v7, v2

    if-eqz v7, :cond_3

    invoke-direct {p0}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->updateImmersiveStatusBarIconColor()V

    :cond_2
    :goto_1
    iput-boolean v6, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->isCheck:Z

    move v5, v4

    goto :goto_0

    :cond_3
    and-int/lit16 v7, v2, 0x400

    if-nez v7, :cond_2

    and-int v7, v8, v2

    if-eqz v7, :cond_2

    and-int v7, v8, v2

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v7

    and-int/lit16 v7, v7, 0x2000

    if-eqz v7, :cond_4

    move v3, v6

    .local v3, "isLightStatusbar":Z
    :goto_2
    const/high16 v5, -0x1000000

    if-ne v1, v5, :cond_5

    const/4 v4, 0x1

    goto :goto_1

    .end local v3    # "isLightStatusbar":Z
    :cond_4
    move v3, v5

    goto :goto_2

    .restart local v3    # "isLightStatusbar":Z
    :cond_5
    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->updateImmersiveStatusBarIconColor()V

    goto :goto_1
.end method

.method private setImmersiveStatusBarColor(I)V
    .locals 1
    .param p1, "currentColor"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-direct {p0, p1}, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->setImmersiveStatusBarIconColor(I)V

    return-void
.end method

.method private setImmersiveStatusBarIconColor(I)V
    .locals 6
    .param p1, "pickerColor"    # I

    .prologue
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .local v3, "red":I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .local v2, "green":I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .local v0, "blue":I
    const/16 v4, 0xd2

    if-gt v2, v4, :cond_0

    add-int v4, v3, v2

    add-int/2addr v4, v0

    const/16 v5, 0x20d

    if-le v4, v5, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mWindow:Landroid/view/Window;

    const/high16 v5, -0x1000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarIconColor(I)V

    .end local v0    # "blue":I
    .end local v2    # "green":I
    .end local v3    # "red":I
    :goto_0
    return-void

    .restart local v0    # "blue":I
    .restart local v2    # "green":I
    .restart local v3    # "red":I
    :cond_1
    iget-object v4, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mWindow:Landroid/view/Window;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->setStatusBarIconColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "blue":I
    .end local v2    # "green":I
    .end local v3    # "red":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateImmersiveStatusBarIconColor()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/high16 v9, -0x1000000

    iget-object v6, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mPickerColorUtils:Lcom/letv/leui/util/statusbar/PickerColorUtils;

    iget-object v7, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/letv/leui/util/statusbar/PickerColorUtils;->PickerColor(Landroid/view/View;I)I

    move-result v4

    .local v4, "pickerColor":I
    iget-object v6, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mWindow:Landroid/view/Window;

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v3, v6, Landroid/view/WindowManager$LayoutParams;->systemUiIconColor:I

    .local v3, "iconColor":I
    :try_start_0
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    .local v5, "red":I
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .local v2, "green":I
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    .local v0, "blue":I
    const/16 v6, 0xd2

    if-gt v2, v6, :cond_0

    add-int v6, v5, v2

    add-int/2addr v6, v0

    const/16 v7, 0x20d

    if-le v6, v7, :cond_2

    :cond_0
    if-eq v3, v9, :cond_1

    iget-object v6, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mWindow:Landroid/view/Window;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/view/Window;->setStatusBarIconColor(I)V

    const/high16 v3, -0x1000000

    .end local v0    # "blue":I
    .end local v2    # "green":I
    .end local v5    # "red":I
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "blue":I
    .restart local v2    # "green":I
    .restart local v5    # "red":I
    :cond_2
    if-eq v3, v10, :cond_1

    iget-object v6, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mWindow:Landroid/view/Window;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/view/Window;->setStatusBarIconColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    goto :goto_0

    .end local v0    # "blue":I
    .end local v2    # "green":I
    .end local v5    # "red":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public refreshStatusBarColor()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->mObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager;->myOnWindowFocusChangeListener:Lcom/letv/leui/util/statusbar/LeImmersiveStatusBarManager$MyOnWindowFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method
