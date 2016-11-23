.class public Lcom/android/server/policy/BarController;
.super Ljava/lang/Object;
.source "BarController.java"


# static fields
.field private static final DEBUG:Z

.field private static final TRANSIENT_BAR_HIDING:I = 0x3

.field private static final TRANSIENT_BAR_NONE:I = 0x0

.field private static final TRANSIENT_BAR_SHOWING:I = 0x2

.field private static final TRANSIENT_BAR_SHOW_REQUESTED:I = 0x1

.field private static final TRANSLUCENT_ANIMATION_DELAY_MS:I = 0x3e8


# instance fields
.field private final mEuiOpaqueWmFlags:I

.field private final mEuiTranslucentFlags:I

.field private final mEuiTranslucentWmFlags:I

.field protected final mHandler:Landroid/os/Handler;

.field private mLastTranslucent:J

.field private mNoAnimationOnNextShow:Z

.field private mPendingShow:Z

.field private final mServiceAquireLock:Ljava/lang/Object;

.field private mSetUnHideFlagWhenNextTransparent:Z

.field private mShowTransparent:Z

.field private mState:I

.field private final mStatusBarManagerId:I

.field protected mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected final mTag:Ljava/lang/String;

.field private mTransientBarState:I

.field private final mTransientFlag:I

.field private final mTranslucentFlag:I

.field private final mTranslucentWmFlag:I

.field private final mUnhideFlag:I

.field private mWin:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "debug.system.bar"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/BarController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "transientFlag"    # I
    .param p3, "unhideFlag"    # I
    .param p4, "translucentFlag"    # I
    .param p5, "statusBarManagerId"    # I
    .param p6, "translucentWmFlag"    # I
    .param p7, "euiTranslucentWmFlags"    # I
    .param p8, "euiOpaqueWmFlags"    # I
    .param p9, "euiTranslucentFlags"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BarController."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    .line 77
    iput p2, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    .line 78
    iput p3, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    .line 79
    iput p4, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    .line 80
    iput p5, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    .line 81
    iput p6, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    .line 83
    iput p7, p0, Lcom/android/server/policy/BarController;->mEuiTranslucentWmFlags:I

    .line 84
    iput p8, p0, Lcom/android/server/policy/BarController;->mEuiOpaqueWmFlags:I

    .line 85
    iput p9, p0, Lcom/android/server/policy/BarController;->mEuiTranslucentFlags:I

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/BarController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/BarController;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/server/policy/BarController;->mStatusBarManagerId:I

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/android/server/policy/BarController;->DEBUG:Z

    return v0
.end method

.method private computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I
    .locals 6
    .param p1, "wasVis"    # Z
    .param p2, "wasAnim"    # Z
    .param p3, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p4, "change"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 186
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    .line 188
    .local v1, "vis":Z
    invoke-interface {p3}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    .line 189
    .local v0, "anim":Z
    iget v5, p0, Lcom/android/server/policy/BarController;->mState:I

    if-ne v5, v4, :cond_0

    if-nez p4, :cond_0

    if-nez v1, :cond_0

    .line 201
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :goto_0
    return v2

    .line 191
    .restart local v0    # "anim":Z
    .restart local v1    # "vis":Z
    :cond_0
    iget v5, p0, Lcom/android/server/policy/BarController;->mState:I

    if-ne v5, v2, :cond_1

    if-eqz v1, :cond_1

    move v2, v3

    .line 192
    goto :goto_0

    .line 193
    :cond_1
    if-eqz p4, :cond_3

    .line 194
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    if-nez p2, :cond_2

    if-eqz v0, :cond_2

    move v2, v4

    .line 195
    goto :goto_0

    :cond_2
    move v2, v3

    .line 197
    goto :goto_0

    .line 201
    .end local v0    # "anim":Z
    .end local v1    # "vis":Z
    :cond_3
    iget v2, p0, Lcom/android/server/policy/BarController;->mState:I

    goto :goto_0
.end method

.method private setTransientBarState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v1, 0x2

    .line 296
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq p1, v0, :cond_2

    .line 297
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eq v0, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 298
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    .line 300
    :cond_1
    iput p1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    .line 301
    sget-boolean v0, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTransientBarState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_2
    return-void
.end method

.method private static transientBarStateToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 316
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "TRANSIENT_BAR_HIDING"

    .line 319
    :goto_0
    return-object v0

    .line 317
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string v0, "TRANSIENT_BAR_SHOWING"

    goto :goto_0

    .line 318
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string v0, "TRANSIENT_BAR_SHOW_REQUESTED"

    goto :goto_0

    .line 319
    :cond_2
    if-nez p0, :cond_3

    const-string v0, "TRANSIENT_BAR_NONE"

    goto :goto_0

    .line 320
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateStateLw(I)Z
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 205
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    if-eq p1, v0, :cond_1

    .line 206
    iput p1, p0, Lcom/android/server/policy/BarController;->mState:I

    .line 207
    sget-boolean v0, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/BarController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/BarController$1;-><init>(Lcom/android/server/policy/BarController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustSystemUiVisibilityLw(II)V
    .locals 2
    .param p1, "oldVis"    # I
    .param p2, "vis"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_0
.end method

.method public applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "vis"    # I
    .param p3, "oldVis"    # I

    .prologue
    const v5, 0x8000

    const v4, -0x8001

    .line 133
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    .line 134
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-nez v2, :cond_5

    .line 136
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    .line 137
    .local v0, "fl":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    .line 138
    .local v1, "lefl":I
    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentWmFlag:I

    and-int/2addr v2, v0

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/BarController;->mEuiTranslucentWmFlags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2

    .line 139
    :cond_0
    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    or-int/2addr p2, v2

    .line 143
    :goto_0
    const/high16 v2, -0x80000000

    and-int/2addr v2, v0

    if-eqz v2, :cond_4

    .line 145
    iget v2, p0, Lcom/android/server/policy/BarController;->mEuiOpaqueWmFlags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    .line 146
    and-int/2addr p2, v4

    .line 147
    iget v2, p0, Lcom/android/server/policy/BarController;->mEuiTranslucentFlags:I

    or-int/2addr p2, v2

    .line 156
    :goto_1
    sget-boolean v2, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 157
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyTranslucentFlagLw win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " vis=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " fl=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lefl=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "fl":I
    .end local v1    # "lefl":I
    :cond_1
    :goto_2
    return p2

    .line 141
    .restart local v0    # "fl":I
    .restart local v1    # "lefl":I
    :cond_2
    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr p2, v2

    goto :goto_0

    .line 149
    :cond_3
    or-int/2addr p2, v5

    goto :goto_1

    .line 153
    :cond_4
    and-int/2addr p2, v4

    goto :goto_1

    .line 162
    .end local v0    # "fl":I
    .end local v1    # "lefl":I
    :cond_5
    iget v2, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, p2

    iget v3, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v3, p3

    or-int p2, v2, v3

    .line 163
    and-int v2, p2, v4

    and-int v3, p3, v5

    or-int p2, v2, v3

    goto :goto_2
.end method

.method public checkHiddenLw()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 229
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 230
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    .line 233
    :cond_0
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-nez v2, :cond_2

    .line 235
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 236
    iget-boolean v2, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {p0, v0}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 238
    iput-boolean v1, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    .line 243
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public checkShowTransientBarLw()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 247
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 248
    sget-boolean v1, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, already shown"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 250
    :cond_1
    iget v2, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-ne v2, v1, :cond_2

    .line 251
    sget-boolean v1, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, already requested"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v2, :cond_3

    .line 254
    sget-boolean v1, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, bar doesn\'t exist"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isDisplayedLw()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 257
    sget-boolean v1, Lcom/android/server/policy/BarController;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    const-string v2, "Not showing transient bar, bar already visible"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v0, v1

    .line 260
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x3d

    .line 324
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/BarController;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 327
    iget v0, p0, Lcom/android/server/policy/BarController;->mState:I

    invoke-static {v0}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransientBar"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 329
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    invoke-static {v0}, Lcom/android/server/policy/BarController;->transientBarStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    :cond_0
    return-void
.end method

.method protected getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 308
    const-string v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v1

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isTransientShowRequested()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 113
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransientShowing()Z
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBarShowingLw(Z)Z
    .locals 9
    .param p1, "show"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 170
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v7

    .line 171
    :cond_1
    if-eqz p1, :cond_2

    iget v5, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_2

    .line 172
    iput-boolean v6, p0, Lcom/android/server/policy/BarController;->mPendingShow:Z

    goto :goto_0

    .line 175
    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    .line 176
    .local v4, "wasVis":Z
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    .line 177
    .local v3, "wasAnim":Z
    if-eqz p1, :cond_5

    iget-object v8, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_4

    move v5, v6

    :goto_1
    invoke-interface {v8, v5}, Landroid/view/WindowManagerPolicy$WindowState;->showLw(Z)Z

    move-result v0

    .line 179
    .local v0, "change":Z
    :goto_2
    iput-boolean v7, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 180
    iget-object v5, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v4, v3, v5, v0}, Lcom/android/server/policy/BarController;->computeStateLw(ZZLandroid/view/WindowManagerPolicy$WindowState;Z)I

    move-result v1

    .line 181
    .local v1, "state":I
    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->updateStateLw(I)Z

    move-result v2

    .line 182
    .local v2, "stateChanged":Z
    if-nez v0, :cond_3

    if-eqz v2, :cond_0

    :cond_3
    move v7, v6

    goto :goto_0

    .end local v0    # "change":Z
    .end local v1    # "state":I
    .end local v2    # "stateChanged":Z
    :cond_4
    move v5, v7

    .line 177
    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    iget-boolean v5, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    if-nez v5, :cond_6

    move v5, v6

    :goto_3
    invoke-interface {v8, v5}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    move-result v0

    goto :goto_2

    :cond_6
    move v5, v7

    goto :goto_3
.end method

.method public setShowTransparent(Z)V
    .locals 1
    .param p1, "transparent"    # Z

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eq p1, v0, :cond_0

    .line 96
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    .line 97
    iput-boolean p1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/BarController;->mNoAnimationOnNextShow:Z

    .line 100
    :cond_0
    return-void
.end method

.method public setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    .line 92
    return-void
.end method

.method public showTransient()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 106
    :cond_0
    return-void
.end method

.method public updateVisibilityLw(ZII)I
    .locals 4
    .param p1, "transientAllowed"    # Z
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v1, p0, Lcom/android/server/policy/BarController;->mWin:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v1, :cond_0

    move v0, p3

    .line 292
    .end local p3    # "vis":I
    .local v0, "vis":I
    :goto_0
    return v0

    .line 266
    .end local v0    # "vis":I
    .restart local p3    # "vis":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 267
    :cond_1
    if-eqz p1, :cond_8

    .line 268
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    .line 269
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_2

    .line 270
    iget v1, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v1

    .line 272
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    .line 277
    :cond_3
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/policy/BarController;->mShowTransparent:Z

    if-eqz v1, :cond_4

    .line 278
    const v1, 0x8000

    or-int/2addr p3, v1

    .line 279
    iget-boolean v1, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    if-eqz v1, :cond_4

    .line 280
    iget v1, p0, Lcom/android/server/policy/BarController;->mUnhideFlag:I

    or-int/2addr p3, v1

    .line 281
    iput-boolean v2, p0, Lcom/android/server/policy/BarController;->mSetUnHideFlagWhenNextTransparent:Z

    .line 284
    :cond_4
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientBarState:I

    if-eqz v1, :cond_5

    .line 285
    iget v1, p0, Lcom/android/server/policy/BarController;->mTransientFlag:I

    or-int/2addr p3, v1

    .line 286
    and-int/lit8 p3, p3, -0x2

    .line 288
    :cond_5
    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p3

    if-nez v1, :cond_6

    iget v1, p0, Lcom/android/server/policy/BarController;->mTranslucentFlag:I

    and-int/2addr v1, p2

    if-nez v1, :cond_6

    or-int v1, p3, p2

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 290
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    :cond_7
    move v0, p3

    .line 292
    .end local p3    # "vis":I
    .restart local v0    # "vis":I
    goto :goto_0

    .line 274
    .end local v0    # "vis":I
    .restart local p3    # "vis":I
    :cond_8
    invoke-direct {p0, v2}, Lcom/android/server/policy/BarController;->setTransientBarState(I)V

    goto :goto_1
.end method

.method public wasRecentlyTranslucent()Z
    .locals 4

    .prologue
    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/BarController;->mLastTranslucent:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
