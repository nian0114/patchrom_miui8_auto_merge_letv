.class public Lcom/android/server/policy/global/GlobalActionViewManager;
.super Ljava/lang/Object;
.source "GlobalActionViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCheckedNavigationBar:Z

.field private final mContext:Landroid/content/Context;

.field private mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

.field private mHasNavigationBar:Z

.field mHiddenListener:Landroid/animation/Animator$AnimatorListener;

.field private mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

.field private mPending:Z

.field mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "GlobalAction"

    sput-object v0, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewManager"    # Landroid/view/ViewManager;
    .param p3, "callback"    # Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mCheckedNavigationBar:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHasNavigationBar:Z

    .line 126
    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionViewManager$1;-><init>(Lcom/android/server/policy/global/GlobalActionViewManager;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 268
    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionViewManager$2;-><init>(Lcom/android/server/policy/global/GlobalActionViewManager;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHiddenListener:Landroid/animation/Animator$AnimatorListener;

    .line 64
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 66
    iput-object p3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .line 67
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->initLockSettings()Lcom/android/internal/widget/ILockSettings;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/global/GlobalActionViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewManager;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->hideLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionHostView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    return-object v0
.end method

.method private generateContent()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->generateHost()V

    .line 201
    :cond_0
    return-void
.end method

.method private generateDecor()V
    .locals 2

    .prologue
    .line 196
    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;-><init>(Lcom/android/server/policy/global/GlobalActionViewManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    .line 197
    return-void
.end method

.method private generateHost()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 204
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 206
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/global/GlobalActionHostView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    .line 207
    const/4 v1, 0x0

    .line 209
    .local v1, "isLocked":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v3}, Lcom/android/internal/widget/ILockSettings;->isPhoneControlLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->installHost(Z)V

    .line 214
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/global/GlobalActionHostView;->setMediatorCallback(Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V

    .line 216
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateHost, get phonecontrol lock state failed exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasNavigationBar()Z
    .locals 3

    .prologue
    .line 447
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mCheckedNavigationBar:Z

    if-eqz v2, :cond_0

    .line 448
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHasNavigationBar:Z

    .line 457
    :goto_0
    return v2

    .line 450
    :cond_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 452
    .local v1, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v1}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHasNavigationBar:Z

    .line 453
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mCheckedNavigationBar:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHasNavigationBar:Z

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private hideLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-nez v0, :cond_0

    .line 244
    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    .line 266
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 250
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setVisibility(I)V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->cleanUp()V

    .line 257
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->removeView(Landroid/view/View;)V

    .line 260
    :cond_2
    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    .line 262
    :cond_3
    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    .line 265
    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    goto :goto_0
.end method

.method private initLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    .line 72
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private installDecor(Z)V
    .locals 7
    .param p1, "force"    # Z

    .prologue
    const/4 v1, -0x1

    .line 148
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-nez v2, :cond_3

    .line 149
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->generateDecor()V

    .line 154
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_1

    .line 156
    const/high16 v4, 0xc020000

    .line 162
    .local v4, "flags":I
    const/4 v6, -0x1

    .line 164
    .local v6, "stretch":I
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->hasNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v3, 0x7e8

    .line 166
    .local v3, "type":I
    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 168
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "GlobalAction"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 171
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 173
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 175
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 181
    :cond_0
    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 183
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "type":I
    .end local v4    # "flags":I
    .end local v6    # "stretch":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-nez v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->removeAllViews()V

    .line 189
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->generateContent()V

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    return-void

    .line 151
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v2}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->removeAllViews()V

    goto :goto_0

    .line 164
    .restart local v4    # "flags":I
    .restart local v6    # "stretch":I
    :cond_4
    const/16 v3, 0x7d9

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 4

    .prologue
    .line 222
    sget-object v1, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    const-string v2, "hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    if-nez v1, :cond_0

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    .line 228
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHiddenListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->hidden(Landroid/animation/Animator$AnimatorListener;)V

    .line 231
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    const-string v2, "blurAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 232
    .local v0, "value":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x226

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHiddenListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 234
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 231
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReboot()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->onRebootOrShutdown(Z)V

    .line 298
    :cond_0
    return-void
.end method

.method public onShutDown()V
    .locals 2

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->onRebootOrShutdown(Z)V

    .line 304
    :cond_0
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 90
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    if-eqz v2, :cond_0

    .line 116
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v2, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    const-string v3, "show()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    .line 98
    invoke-direct {p0, v5}, Lcom/android/server/policy/global/GlobalActionViewManager;->installDecor(Z)V

    .line 101
    const/high16 v1, 0x200000

    .line 102
    .local v1, "visFlags":I
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setSystemUiVisibility(I)V

    .line 103
    sget-object v2, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show:setSystemUiVisibility("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setVisibility(I)V

    .line 108
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/global/GlobalActionHostView;->show(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    const-string v3, "blurAlpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 111
    .local v0, "value":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x226

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 112
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 113
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 115
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v2}, Lcom/android/server/policy/global/GlobalActionHostView;->requestFocus()Z

    goto :goto_0

    .line 110
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public showLocked()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    const-string v1, "showLocked()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    .line 124
    return-void
.end method
