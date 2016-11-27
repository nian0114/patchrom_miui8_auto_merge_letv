.class public Lcom/android/server/policy/global/GlobalActionSwipeHelper;
.super Ljava/lang/Object;
.source "GlobalActionSwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;,
        Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    }
.end annotation


# static fields
.field static final ALPHA_FADE_END:F = 0.5f

.field public static ALPHA_FADE_START:F = 0.0f

.field private static final CONSTRAIN_SWIPE:Z = true

.field private static final DISMISS_IF_SWIPED_FAR_ENOUGH:Z = true

.field public static DISMISS_IF_SWIPED_FAR_ENOUGH_SCALE:F = 0.0f

.field private static final FADE_OUT_DURING_SWIPE:Z = false

.field private static final SLOW_ANIMATIONS:Z = false

.field private static final SNAP_ANIM_LEN:I = 0x96

.field public static final X:I = 0x0

.field public static final Y:I = 0x1

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

.field private mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mDensityScale:F

.field private volatile mDragging:Z

.field private mInitialTouchPos:F

.field private mLastTouchPos:F

.field private mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

.field private mMinAlpha:F

.field private mPagingTouchSlop:F

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 44
    const v0, 0x3eb33333    # 0.35f

    sput v0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->DISMISS_IF_SWIPED_FAR_ENOUGH_SCALE:F

    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;FF)V
    .locals 1
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 38
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 39
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 40
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mMinAlpha:F

    .line 74
    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    .line 75
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    .line 76
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 77
    iput p3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDensityScale:F

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/global/GlobalActionSwipeHelper;)Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    return-object v0
.end method

.method private createTranslationAnimation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    .param p2, "newPos"    # F

    .prologue
    .line 123
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 125
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 123
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private getAlphaForOffset(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F
    .locals 6
    .param p1, "view"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getAnimatorWH(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v3

    .line 174
    .local v3, "viewSize":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v4, v3

    .line 175
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 176
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v1

    .line 177
    .local v1, "pos":F
    sget v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 178
    sget v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 182
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 179
    :cond_1
    sget v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 180
    sget v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method private getAnimatorWH(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F
    .locals 1
    .param p1, "v"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 134
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getRawPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    goto :goto_0
.end method

.method private getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F
    .locals 1
    .param p1, "v"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private setTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;F)V
    .locals 1
    .param p1, "v"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    .param p2, "translate"    # F

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 144
    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationX()F

    move-result v0

    add-float/2addr v0, p2

    invoke-interface {p1, v0}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->setTranslationX(F)V

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getTranslationY()F

    move-result v0

    add-float/2addr v0, p2

    invoke-interface {p1, v0}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public final isDragging()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 201
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    :cond_1
    return v3

    .line 203
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    if-eqz v4, :cond_1

    .line 206
    iput-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    .line 207
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->getAnimatorObject()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .line 209
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 210
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    if-eqz v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->canSwipeToBottom()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 214
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getRawPos(Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mInitialTouchPos:F

    iput v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mLastTouchPos:F

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    .line 219
    .local v1, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 220
    .local v2, "rawY":F
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v3, v1, v2}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->hintSwipeRect(FF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    goto :goto_0

    .line 233
    .end local v1    # "rawX":F
    .end local v2    # "rawY":F
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    .line 234
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    goto :goto_0

    .line 201
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 241
    iget-boolean v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDragging:Z

    if-nez v10, :cond_1

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v10

    if-nez v10, :cond_0

    .line 244
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    invoke-interface {v10, v11, v12}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->hintCancelRect(FF)Z

    .line 245
    const/4 v10, 0x1

    .line 321
    :goto_0
    return v10

    .line 247
    :cond_0
    const/4 v10, 0x0

    goto :goto_0

    .line 250
    :cond_1
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 252
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 321
    :cond_2
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 256
    :pswitch_0
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    if-eqz v10, :cond_2

    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getRawPos(Landroid/view/MotionEvent;)F

    move-result v10

    iget v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mLastTouchPos:F

    sub-float v3, v10, v11

    .line 261
    .local v3, "delta":F
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v10}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->canSwipeToBottom()Z

    move-result v10

    if-nez v10, :cond_3

    .line 262
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0, v10}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getAnimatorWH(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    .line 272
    :cond_3
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0, v10, v3}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->setTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;F)V

    .line 278
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getRawPos(Landroid/view/MotionEvent;)F

    move-result v10

    iput v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mLastTouchPos:F

    goto :goto_1

    .line 283
    .end local v3    # "delta":F
    :pswitch_1
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    if-eqz v10, :cond_2

    .line 284
    iget v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->MAX_DISMISS_VELOCITY:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDensityScale:F

    mul-float v5, v10, v11

    .line 285
    .local v5, "maxVelocity":F
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 287
    iget v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    iget v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDensityScale:F

    mul-float v4, v10, v11

    .line 289
    .local v4, "escapeVelocity":F
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v10}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v9

    .line 290
    .local v9, "velocity":F
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-direct {p0, v10}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v6

    .line 293
    .local v6, "perpendicularVelocity":F
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0, v10}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const v11, 0x44bb8000    # 1500.0f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    const/4 v1, 0x1

    .line 297
    .local v1, "childSwipedFarEnough":Z
    :goto_2
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v10, v10, v4

    if-lez v10, :cond_8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_8

    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_6

    const/4 v10, 0x1

    :goto_3
    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0, v11}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_7

    const/4 v11, 0x1

    :goto_4
    if-ne v10, v11, :cond_8

    const/4 v2, 0x1

    .line 303
    .local v2, "childSwipedFastEnough":Z
    :goto_5
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-interface {v10}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getInitTranslationY()I

    move-result v10

    int-to-float v10, v10

    iget-object v11, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mAnimatorObject:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-direct {p0, v11}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v11

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9

    const/4 v7, 0x1

    .line 306
    .local v7, "swipBelow":Z
    :goto_6
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v10}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->canSwipeToBottom()Z

    move-result v10

    if-eqz v10, :cond_a

    if-nez v2, :cond_4

    if-eqz v1, :cond_a

    :cond_4
    if-eqz v7, :cond_a

    const/4 v8, 0x1

    .line 310
    .local v8, "swipeToBottom":Z
    :goto_7
    if-eqz v8, :cond_c

    .line 312
    iget-object v10, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v10}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->onActionStart()V

    .line 313
    if-eqz v2, :cond_b

    .end local v9    # "velocity":F
    :goto_8
    invoke-virtual {p0, v9}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->swipeToBottom(F)V

    goto/16 :goto_1

    .line 293
    .end local v1    # "childSwipedFarEnough":Z
    .end local v2    # "childSwipedFastEnough":Z
    .end local v7    # "swipBelow":Z
    .end local v8    # "swipeToBottom":Z
    .restart local v9    # "velocity":F
    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    .line 297
    .restart local v1    # "childSwipedFarEnough":Z
    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    const/4 v11, 0x0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    goto :goto_5

    .line 303
    .restart local v2    # "childSwipedFastEnough":Z
    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    .line 306
    .restart local v7    # "swipBelow":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_7

    .line 313
    .restart local v8    # "swipeToBottom":Z
    :cond_b
    const/4 v9, 0x0

    goto :goto_8

    .line 316
    :cond_c
    invoke-virtual {p0, v9}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->snapChild(F)V

    goto/16 :goto_1

    .line 252
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDensityScale:F

    .line 83
    return-void
.end method

.method public setMediatorCallback(Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V
    .locals 0
    .param p1, "viewMediatorCallback"    # Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .line 447
    return-void
.end method

.method public setMinAlpha(F)V
    .locals 0
    .param p1, "minAlpha"    # F

    .prologue
    .line 164
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mMinAlpha:F

    .line 165
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 1
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 86
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mDensityScale:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mPagingTouchSlop:F

    .line 87
    return-void
.end method

.method public snapChild(F)V
    .locals 6
    .param p1, "velocity"    # F

    .prologue
    .line 376
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    if-nez v4, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v4}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->getAnimatorObject()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    move-result-object v1

    .line 378
    .local v1, "animView":Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    if-eqz v1, :cond_0

    .line 379
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v4}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->canSwipeToBottom()Z

    move-result v2

    .line 380
    .local v2, "canAnimViewBeDismissed":Z
    invoke-interface {v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getInitTranslationY()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v1, v4}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->createTranslationAnimation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 381
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 382
    const/16 v3, 0x96

    .line 383
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 386
    new-instance v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper$3;

    invoke-direct {v4, p0, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$3;-><init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 393
    new-instance v4, Lcom/android/server/policy/global/GlobalActionSwipeHelper$4;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$4;-><init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;ZLcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 400
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public swipeToBottom(F)V
    .locals 8
    .param p1, "velocity"    # F

    .prologue
    .line 331
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    if-nez v5, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v5}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->getAnimatorObject()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    move-result-object v1

    .line 333
    .local v1, "animView":Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    if-eqz v1, :cond_0

    .line 334
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->mCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;

    invoke-interface {v5}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;->canSwipeToBottom()Z

    move-result v2

    .line 335
    .local v2, "canAnimViewBeDismissed":Z
    invoke-interface {v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;->getEndTranslationY()I

    move-result v5

    int-to-float v4, v5

    .line 337
    .local v4, "newPos":F
    iget v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 338
    .local v3, "duration":I
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-eqz v5, :cond_2

    .line 339
    invoke-direct {p0, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->getTranslation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 347
    :goto_1
    invoke-direct {p0, v1, v4}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->createTranslationAnimation(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 348
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 349
    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 352
    new-instance v5, Lcom/android/server/policy/global/GlobalActionSwipeHelper$1;

    invoke-direct {v5, p0}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$1;-><init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 361
    new-instance v5, Lcom/android/server/policy/global/GlobalActionSwipeHelper$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper$2;-><init>(Lcom/android/server/policy/global/GlobalActionSwipeHelper;ZLcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 368
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 342
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    iget v3, p0, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method
