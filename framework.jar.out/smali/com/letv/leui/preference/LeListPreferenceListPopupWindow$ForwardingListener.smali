.class public abstract Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "LeListPreferenceListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "src"    # Landroid/view/View;

    .prologue
    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1289
    iput-object p1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1290
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    .line 1291
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    iput v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mTapTimeout:I

    .line 1293
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1294
    return-void
.end method

.method static synthetic access$900(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    return-object v0
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 1425
    iget-object v4, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1426
    .local v4, "src":Landroid/view/View;
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->getPopup()Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    move-result-object v3

    .line 1427
    .local v3, "popup":Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1444
    :cond_0
    :goto_0
    return v2

    .line 1431
    :cond_1
    # getter for: Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->mDropDownList:Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    invoke-static {v3}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->access$700(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;)Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;

    move-result-object v0

    .line 1432
    .local v0, "dst":Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->isShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1437
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1438
    .local v1, "dstEvent":Landroid/view/MotionEvent;
    invoke-virtual {v4, v1}, Landroid/view/View;->toGlobalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1439
    invoke-virtual {v0, v1}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->toLocalMotionEvent(Landroid/view/MotionEvent;)Z

    .line 1442
    iget v5, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v0, v1, v5}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 1443
    .local v2, "handled":Z
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "srcEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1377
    iget-object v2, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1378
    .local v2, "src":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return v5

    .line 1382
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1383
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1385
    :pswitch_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1386
    iget-object v6, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v6, :cond_2

    .line 1387
    new-instance v6, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener$DisallowIntercept;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$1;)V

    iput-object v6, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 1389
    :cond_2
    iget-object v6, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    iget v7, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v8, v7

    invoke-virtual {v2, v6, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1392
    :pswitch_1
    iget v7, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 1393
    .local v1, "activePointerIndex":I
    if-ltz v1, :cond_0

    .line 1394
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 1395
    .local v3, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 1396
    .local v4, "y":F
    iget v7, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-virtual {v2, v3, v4, v7}, Landroid/view/View;->pointInView(FFF)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1398
    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v5, :cond_3

    .line 1399
    iget-object v5, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v2, v5}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1401
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move v5, v6

    .line 1402
    goto :goto_0

    .line 1408
    .end local v1    # "activePointerIndex":I
    .end local v3    # "x":F
    .end local v4    # "y":F
    :pswitch_2
    iget-object v6, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v6, :cond_0

    .line 1409
    iget-object v6, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v2, v6}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract getPopup()Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    .prologue
    .line 1346
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->getPopup()Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    move-result-object v0

    .line 1347
    .local v0, "popup":Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1348
    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->show()V

    .line 1350
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    .prologue
    .line 1363
    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->getPopup()Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;

    move-result-object v0

    .line 1364
    .local v0, "popup":Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1365
    invoke-virtual {v0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow;->dismiss()V

    .line 1367
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1310
    iget-boolean v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1312
    .local v1, "wasForwarding":Z
    if-eqz v1, :cond_4

    .line 1313
    invoke-direct {p0, p2}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v0, v3

    .line 1318
    .local v0, "forwarding":Z
    :goto_0
    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1319
    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    return v2

    .end local v0    # "forwarding":Z
    :cond_3
    move v0, v2

    .line 1313
    goto :goto_0

    .line 1315
    :cond_4
    invoke-direct {p0, p2}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v3

    .restart local v0    # "forwarding":Z
    :goto_1
    goto :goto_0

    .end local v0    # "forwarding":Z
    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1324
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1329
    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1331
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    iget-object v1, p0, Lcom/letv/leui/preference/LeListPreferenceListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1334
    :cond_0
    return-void
.end method
