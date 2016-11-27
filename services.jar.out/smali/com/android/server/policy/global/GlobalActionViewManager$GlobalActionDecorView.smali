.class Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;
.super Landroid/widget/FrameLayout;
.source "GlobalActionViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GlobalActionDecorView"
.end annotation


# instance fields
.field private mCancelOnUp:Z

.field private mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

.field private mIntercepted:Z

.field private final mWindowTouchSlop:I

.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/global/GlobalActionViewManager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    .line 314
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 315
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mWindowTouchSlop:I

    .line 316
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurRadiusDp(F)V

    .line 317
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurLumaContrast(F)V

    .line 318
    const v0, -0x414ccccd    # -0.35f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurLumaBrightness(F)V

    .line 319
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurChromaContrast(F)V

    .line 320
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBlurMode(I)V

    .line 321
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 322
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "handle":Z
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;
    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionViewManager;->access$200(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionHostView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 400
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 418
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 405
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->handleButtonKey()Z

    move-result v0

    .line 406
    goto :goto_0

    .line 413
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->handleMenuKey()Z

    move-result v0

    goto :goto_0

    .line 418
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 400
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x4f -> :sswitch_1
        0xa4 -> :sswitch_1
        0xbb -> :sswitch_0
    .end sparse-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 354
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v2, :cond_4

    .line 355
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 356
    .local v8, "action":I
    if-nez v8, :cond_1

    .line 357
    move-object v9, p0

    .line 358
    .local v9, "decor":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 359
    .local v10, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 360
    .local v11, "eventY":I
    iget v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    .line 364
    :cond_0
    iput-boolean v13, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    .line 368
    .end local v9    # "decor":Landroid/view/View;
    .end local v10    # "eventX":I
    .end local v11    # "eventY":I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    if-nez v2, :cond_6

    .line 369
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    .line 370
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    if-eqz v2, :cond_2

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 372
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 374
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 375
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    .end local v0    # "now":J
    :cond_2
    if-ne v8, v13, :cond_4

    .line 382
    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    if-eqz v2, :cond_3

    .line 383
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewManager;->access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 385
    :cond_3
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    .line 386
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    .line 390
    .end local v8    # "action":I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_5
    :goto_0
    return v2

    .line 378
    .restart local v8    # "action":I
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/policy/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 381
    if-ne v8, v13, :cond_5

    .line 382
    iget-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    if-eqz v3, :cond_7

    .line 383
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionViewManager;->access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 385
    :cond_7
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    .line 386
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v2

    if-ne v8, v13, :cond_9

    .line 382
    iget-boolean v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    if-eqz v3, :cond_8

    .line 383
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    invoke-static {v3}, Lcom/android/server/policy/global/GlobalActionViewManager;->access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 385
    :cond_8
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mCancelOnUp:Z

    .line 386
    iput-boolean v12, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mIntercepted:Z

    :cond_9
    throw v2
.end method

.method public handleButtonKey()Z
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 429
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public handleMenuKey()Z
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    .line 436
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 326
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 331
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView$1;

    invoke-direct {v2, p0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView$1;-><init>(Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/EnableAccessibilityController;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 346
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 347
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->mEnableAccessibilityController:Lcom/android/server/policy/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/policy/EnableAccessibilityController;->onDestroy()V

    .line 350
    :cond_0
    return-void
.end method
