.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_OUT:I = 0x2

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mAppWindowAnimating:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mForceHiding:I

.field mInitialized:Z

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayDisableWindowAnimations:Z

.field mKeyguardGoingAwayToNotificationShade:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 86
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 89
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 92
    iput-boolean v2, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 105
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 117
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 118
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 119
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 121
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animateLocked(J)V

    return-void
.end method

.method private animateLocked(J)V
    .locals 25
    .param p1, "frameTimeNs"    # J

    .prologue
    .line 642
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 646
    :cond_1
    const-wide/32 v20, 0xf4240

    div-long v20, p1, v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 647
    const/16 v19, 0x8

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 648
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v17, v0

    .line 649
    .local v17, "wasAnimating":Z
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 650
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    .line 651
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v19, :cond_2

    .line 652
    const-string v19, "WindowAnimator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "!!! animate: entry time="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_2
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v19, :cond_3

    const-string v19, "WindowAnimator"

    const-string v20, ">>> OPEN TRANSACTION animateLocked"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_3
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 658
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    .line 660
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 661
    .local v14, "numDisplays":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v14, :cond_b

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 663
    .local v7, "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateAppWindowsLocked(I)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 666
    .local v5, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v16, v0

    .line 668
    .local v16, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 669
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 670
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 695
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWindowsLocked(I)V

    .line 696
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->updateWallpaperLocked(I)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v18

    .line 699
    .local v18, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 700
    .local v4, "N":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_3
    if-ge v13, v4, :cond_a

    .line 701
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 700
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 672
    .end local v4    # "N":I
    .end local v13    # "j":I
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 673
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 674
    const/16 v19, 0x0

    move-object/from16 v0, v19

    iput-object v0, v5, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    if-nez v7, :cond_6

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V

    .line 686
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Lcom/android/server/wm/WindowManagerService;->haltActivityResuming(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 734
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :catch_0
    move-exception v10

    .line 735
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string v19, "WindowAnimator"

    const-string v20, "Unhandled exception in Window Manager"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 738
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v19, :cond_7

    const-string v19, "WindowAnimator"

    const-string v20, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :cond_7
    :goto_4
    const/4 v11, 0x0

    .line 743
    .local v11, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/util/SparseArray;->size()I

    move-result v14

    .line 744
    .restart local v14    # "numDisplays":I
    const/4 v8, 0x0

    .local v8, "displayNdx":I
    :goto_5
    if-ge v8, v14, :cond_12

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 746
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v15

    .line 747
    .local v15, "pendingChanges":I
    and-int/lit8 v19, v15, 0x4

    if-eqz v19, :cond_8

    .line 748
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    or-int/lit8 v19, v19, 0x20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 750
    :cond_8
    if-eqz v15, :cond_9

    .line 751
    const/4 v11, 0x1

    .line 744
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 661
    .end local v6    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v8    # "displayNdx":I
    .end local v11    # "hasPendingLayoutChanges":Z
    .end local v15    # "pendingChanges":I
    .restart local v4    # "N":I
    .restart local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v7    # "displayId":I
    .restart local v12    # "i":I
    .restart local v13    # "j":I
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 705
    .end local v4    # "N":I
    .end local v5    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v7    # "displayId":I
    .end local v13    # "j":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v18    # "windows":Lcom/android/server/wm/WindowList;
    :cond_b
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v14, :cond_e

    .line 706
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 708
    .restart local v7    # "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/wm/WindowAnimator;->testTokenMayBeDrawnLocked(I)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v16, v0

    .line 712
    .restart local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v16, :cond_c

    .line 713
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 716
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v20

    or-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    if-nez v7, :cond_d

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 705
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 725
    .end local v7    # "displayId":I
    .end local v16    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_f

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 729
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v19, v0

    if-eqz v19, :cond_10

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 737
    :cond_10
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 738
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v19, :cond_7

    const-string v19, "WindowAnimator"

    const-string v20, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 737
    .end local v12    # "i":I
    .end local v14    # "numDisplays":I
    :catchall_0
    move-exception v19

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 738
    sget-boolean v20, Lcom/android/server/wm/WindowManagerService;->SHOW_TRANSACTIONS:Z

    if-eqz v20, :cond_11

    const-string v20, "WindowAnimator"

    const-string v21, "<<< CLOSE TRANSACTION animateLocked"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    throw v19

    .line 755
    .restart local v8    # "displayNdx":I
    .restart local v11    # "hasPendingLayoutChanges":Z
    .restart local v14    # "numDisplays":I
    :cond_12
    const/4 v9, 0x0

    .line 756
    .local v9, "doRequest":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v19, v0

    if-eqz v19, :cond_13

    .line 757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v9

    .line 760
    :cond_13
    if-nez v11, :cond_14

    if-eqz v9, :cond_15

    .line 761
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 764
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v19, v0

    if-nez v19, :cond_16

    if-eqz v17, :cond_16

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 767
    :cond_16
    sget-boolean v19, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v19, :cond_0

    .line 768
    const-string v19, "WindowAnimator"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "!!! animate: exit mAnimating="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mBulkUpdateParams="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " mPendingLayoutChanges(DEFAULT_DISPLAY)="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bulkUpdateParams"    # I

    .prologue
    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 777
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 778
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    .line 781
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    .line 784
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    .line 787
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    .line 790
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    packed-switch v0, :pswitch_data_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 109
    :pswitch_0
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_0

    .line 110
    :pswitch_1
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_0

    .line 111
    :pswitch_2
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 874
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 875
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_0

    .line 876
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    .line 877
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 879
    :cond_0
    return-object v0
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .locals 11
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/high16 v10, 0x80000

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 196
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v8, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 197
    .local v2, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v10

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v9, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v8, v2, v9}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_0
    move v4, v6

    .line 201
    .local v4, "showImeOverKeyguard":Z
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 202
    .local v5, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v5, :cond_6

    const/4 v1, 0x0

    .line 205
    .local v1, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :goto_1
    const/4 v0, 0x0

    .line 207
    .local v0, "allowWhenLocked":Z
    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v8, :cond_1

    if-ne v2, p1, :cond_7

    :cond_1
    if-eqz v4, :cond_7

    move v8, v6

    :goto_2
    or-int/2addr v0, v8

    .line 209
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_8

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v8, :cond_8

    move v8, v6

    :goto_3
    or-int/2addr v0, v8

    .line 211
    if-eqz v1, :cond_4

    .line 212
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v1, v8, :cond_3

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_9

    :cond_3
    move v8, v6

    :goto_4
    or-int/2addr v0, v8

    .line 220
    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v8

    if-eqz v8, :cond_a

    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_a

    move v3, v6

    .line 222
    .local v3, "keyguardOn":Z
    :goto_5
    if-eqz v3, :cond_b

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v8

    if-nez v8, :cond_b

    :goto_6
    return v6

    .end local v0    # "allowWhenLocked":Z
    .end local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "keyguardOn":Z
    .end local v4    # "showImeOverKeyguard":Z
    .end local v5    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_5
    move v4, v7

    .line 197
    goto :goto_0

    .line 202
    .restart local v4    # "showImeOverKeyguard":Z
    .restart local v5    # "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    :cond_6
    iget-object v1, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_1

    .restart local v0    # "allowWhenLocked":Z
    .restart local v1    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_7
    move v8, v7

    .line 207
    goto :goto_2

    :cond_8
    move v8, v7

    .line 209
    goto :goto_3

    :cond_9
    move v8, v7

    .line 212
    goto :goto_4

    :cond_a
    move v3, v7

    .line 220
    goto :goto_5

    .restart local v3    # "keyguardOn":Z
    :cond_b
    move v6, v7

    .line 222
    goto :goto_6
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .locals 12
    .param p1, "displayId"    # I

    .prologue
    .line 598
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 599
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 600
    .local v2, "numTasks":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 601
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 602
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    .line 603
    .local v3, "numTokens":I
    const/4 v6, 0x0

    .local v6, "tokenNdx":I
    :goto_1
    if-ge v6, v3, :cond_3

    .line 604
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 605
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 606
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 607
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_1

    .line 608
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 609
    if-eqz v0, :cond_1

    .line 612
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_2

    .line 613
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 614
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 615
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v9, :cond_0

    const-string v9, "WindowAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting mOrientationChangeComplete=true because wtoken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numInteresting="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numDrawn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_0
    const/4 v9, 0x4

    const-string v10, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v1, v9, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 603
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 624
    :cond_2
    const/16 v9, 0x8

    const-string v10, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v1, v9, v10, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 629
    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 630
    iget-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    goto :goto_2

    .line 600
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 637
    .end local v3    # "numTokens":I
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_4
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .locals 14
    .param p1, "displayId"    # I

    .prologue
    .line 154
    iget-object v11, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    .line 155
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "stackNdx":I
    :goto_0
    if-ltz v5, :cond_7

    .line 156
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 157
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 158
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    .local v7, "taskNdx":I
    :goto_1
    if-ltz v7, :cond_3

    .line 159
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget-object v10, v11, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 160
    .local v10, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .local v9, "tokenNdx":I
    :goto_2
    if-ltz v9, :cond_2

    .line 161
    invoke-virtual {v10, v9}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 162
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 163
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 164
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 165
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 160
    :cond_0
    :goto_3
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 166
    :cond_1
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_0

    .line 168
    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appToken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 171
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v11, :cond_0

    const-string v11, "WindowAnimator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateWindowsApps...: done animating "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 158
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 177
    .end local v9    # "tokenNdx":I
    .end local v10    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_3
    iget-object v1, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 178
    .local v1, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    .line 179
    .local v2, "exitingCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_6

    .line 180
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 181
    .restart local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 182
    iget-wide v12, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 183
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAppWindowAnimating:Z

    iput-boolean v11, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 179
    :cond_4
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 184
    :cond_5
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_4

    .line 186
    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exiting appToken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12, p1}, Lcom/android/server/wm/WindowAnimator;->setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 188
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v11, :cond_4

    const-string v11, "WindowAnimator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateWindowsApps...: done animating exiting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 155
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 193
    .end local v1    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "exitingCount":I
    .end local v3    # "i":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_7
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .locals 11
    .param p1, "displayId"    # I

    .prologue
    .line 531
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 533
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 534
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    const/4 v2, 0x0

    .line 536
    .local v2, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_6

    .line 537
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 538
    .local v5, "win":Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 539
    .local v6, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v8, :cond_1

    .line 536
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 546
    :cond_1
    iget-boolean v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v8, :cond_4

    .line 547
    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_3

    .line 548
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/WindowManagerService;->requestWallpaper(Lcom/android/server/wm/WindowState;)I

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 550
    move-object v2, v5

    .line 552
    :cond_2
    iget-object v8, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 553
    .local v1, "color":I
    if-eqz v1, :cond_3

    .line 554
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 555
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v4, :cond_3

    .line 556
    invoke-virtual {v4, v6, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    .line 560
    .end local v1    # "color":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_3
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 566
    :cond_4
    iget-object v0, v6, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 567
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v0, :cond_0

    iget-object v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_0

    iget-boolean v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v8, :cond_0

    .line 569
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/WindowManagerService;->requestWallpaper(Lcom/android/server/wm/WindowState;)I

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 571
    move-object v2, v5

    .line 574
    :cond_5
    iget-object v8, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v8}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v1

    .line 575
    .restart local v1    # "color":I
    if-eqz v1, :cond_0

    .line 576
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v4

    .line 577
    .restart local v4    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v4, :cond_0

    .line 578
    invoke-virtual {v4, v6, v1}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_1

    .line 584
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v1    # "color":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v5    # "win":Lcom/android/server/wm/WindowState;
    .end local v6    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_6
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v8, v2, :cond_8

    .line 585
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v8, :cond_7

    const-string v8, "WindowAnimator"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Detached wallpaper changed from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_7
    iput-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 589
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v8, v8, 0x2

    iput v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 591
    :cond_8
    return-void
.end method

.method private updateWindowsLocked(I)V
    .locals 36
    .param p1, "displayId"    # I

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v30

    .line 230
    .local v30, "windows":Lcom/android/server/wm/WindowList;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v31, v0

    if-eqz v31, :cond_2

    .line 231
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowList;->size()I

    move-result v31

    add-int/lit8 v16, v31, -0x1

    .local v16, "i":I
    :goto_0
    if-ltz v16, :cond_2

    .line 232
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/WindowState;

    .line 233
    .local v28, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v31

    if-nez v31, :cond_0

    .line 231
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 236
    :cond_0
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    .line 237
    .local v29, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v31, v0

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0x400

    move/from16 v31, v0

    if-eqz v31, :cond_15

    .line 238
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v31, v0

    if-nez v31, :cond_2

    .line 239
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v31, :cond_1

    const-string v31, "WindowAnimator"

    const-string v32, "updateWindowsLocked: creating delay animation"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1
    new-instance v31, Landroid/view/animation/AlphaAnimation;

    const/high16 v32, 0x3f800000    # 1.0f

    const/high16 v33, 0x3f800000    # 1.0f

    invoke-direct/range {v31 .. v33}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 244
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x3e8

    invoke-virtual/range {v31 .. v33}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 245
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 246
    const-wide/16 v32, -0x1

    move-wide/from16 v0, v32

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 247
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 259
    .end local v16    # "i":I
    .end local v28    # "win":Lcom/android/server/wm/WindowState;
    .end local v29    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_2
    :goto_1
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 261
    const/16 v25, 0x0

    .line 262
    .local v25, "wallpaperInUnForceHiding":Z
    const/16 v21, 0x0

    .line 263
    .local v21, "startingInUnForceHiding":Z
    const/16 v22, 0x0

    .line 264
    .local v22, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v24, 0x0

    .line 265
    .local v24, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/wm/WindowList;->size()I

    move-result v31

    add-int/lit8 v16, v31, -0x1

    .restart local v16    # "i":I
    :goto_2
    if-ltz v16, :cond_34

    .line 266
    move-object/from16 v0, v30

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/wm/WindowState;

    .line 267
    .restart local v28    # "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v29, v0

    .line 268
    .restart local v29    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v15, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 269
    .local v15, "flags":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v11

    .line 270
    .local v11, "canBeForceHidden":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowAnimator;->shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    move-result v20

    .line 271
    .local v20, "shouldBeForceHidden":Z
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v31, v0

    if-eqz v31, :cond_32

    .line 272
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v26, v0

    .line 273
    .local v26, "wasAnimating":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v18

    .line 274
    .local v18, "nowAnimating":Z
    move/from16 v0, v18

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 275
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    move/from16 v31, v0

    or-int v31, v31, v18

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    .line 277
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v31, v0

    if-eqz v31, :cond_17

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    move/from16 v31, v0

    if-eqz v31, :cond_17

    const/4 v8, 0x1

    .line 279
    .local v8, "appWindowAnimating":Z
    :goto_3
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mNewSurface:Z

    move/from16 v17, v0

    .line 280
    .local v17, "newSurface":Z
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v31, v0

    if-eqz v31, :cond_18

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    move/from16 v31, v0

    if-eqz v31, :cond_18

    const/16 v27, 0x1

    .line 282
    .local v27, "wasAppWindowAnimating":Z
    :goto_4
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mNewSurface:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3

    if-eqz v27, :cond_3

    .line 283
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mNewSurface:Z

    .line 284
    :cond_3
    if-nez v17, :cond_19

    const/16 v31, 0x1

    :goto_5
    and-int v27, v27, v31

    .line 285
    if-nez v8, :cond_4

    if-eqz v18, :cond_1a

    :cond_4
    const/4 v5, 0x1

    .line 286
    .local v5, "anyAnimating":Z
    :goto_6
    if-nez v27, :cond_5

    if-eqz v26, :cond_1b

    :cond_5
    const/4 v6, 0x1

    .line 287
    .local v6, "anyWasAnimating":Z
    :goto_7
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mNewSurface:Z

    .line 290
    if-eqz v5, :cond_1e

    if-nez v6, :cond_1e

    .line 291
    :try_start_0
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1c

    const/16 v19, -0x1

    .line 294
    .local v19, "remainingFrameCount":I
    :goto_8
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/IWindow;->onAnimationStarted(I)V

    .line 295
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v31, :cond_6

    .line 296
    const-string v31, "WindowAnimator"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onAnimationStarted("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "): "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v19    # "remainingFrameCount":I
    :cond_6
    :goto_9
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v31, :cond_7

    .line 307
    const-string v31, "WindowAnimator"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ": wasAnimating="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ", nowAnimating="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_7
    if-eqz v26, :cond_8

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    move/from16 v31, v0

    if-nez v31, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    if-ne v0, v1, :cond_8

    .line 312
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v31, v0

    or-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 313
    const/16 v31, 0x0

    const/16 v32, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 315
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v31, :cond_8

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    const-string v32, "updateWindowsAndWallpaperLocked 2"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 321
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v31

    if-eqz v31, :cond_22

    .line 322
    if-nez v26, :cond_1f

    if-eqz v18, :cond_1f

    .line 323
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v31, :cond_9

    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-nez v31, :cond_9

    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v31, :cond_a

    :cond_9
    const-string v31, "WindowAnimator"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Animation started that could impact force hide: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v31, v0

    or-int/lit8 v31, v31, 0x4

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 326
    const/16 v31, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 328
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v31, :cond_b

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    const-string v32, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 332
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 339
    :cond_c
    :goto_a
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v31

    if-eqz v31, :cond_d

    .line 340
    if-eqz v18, :cond_20

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v31, v0

    if-eqz v31, :cond_20

    .line 341
    const/16 v31, 0x2

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    .line 346
    :cond_d
    :goto_b
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v31, :cond_e

    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v31, :cond_f

    :cond_e
    const-string v31, "WindowAnimator"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Force hide "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hasSurface="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " policyVis="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " destroying="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " attHidden="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " vis="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " hidden="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    move/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " anim="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    .end local v5    # "anyAnimating":Z
    .end local v6    # "anyWasAnimating":Z
    .end local v8    # "appWindowAnimating":Z
    .end local v17    # "newSurface":Z
    .end local v18    # "nowAnimating":Z
    .end local v26    # "wasAnimating":Z
    .end local v27    # "wasAppWindowAnimating":Z
    :cond_f
    :goto_c
    move-object/from16 v0, v28

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 441
    .local v10, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_11

    .line 442
    if-eqz v10, :cond_10

    iget-boolean v0, v10, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    move/from16 v31, v0

    if-eqz v31, :cond_11

    .line 443
    :cond_10
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v31

    if-eqz v31, :cond_11

    .line 444
    const/16 v31, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 446
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v31, :cond_11

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    const-string v32, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 453
    :cond_11
    move-object/from16 v0, v29

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 454
    .local v7, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v7, :cond_13

    iget-object v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    move-object/from16 v31, v0

    if-eqz v31, :cond_13

    .line 455
    iget v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_12

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 457
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 459
    :cond_12
    iget v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move/from16 v31, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_13

    .line 460
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v7, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 463
    :cond_13
    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    move/from16 v31, v0

    if-eqz v31, :cond_14

    .line 464
    move-object/from16 v24, v28

    .line 265
    .end local v7    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v10    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_14
    :goto_d
    add-int/lit8 v16, v16, -0x1

    goto/16 :goto_2

    .line 250
    .end local v11    # "canBeForceHidden":Z
    .end local v15    # "flags":I
    .end local v20    # "shouldBeForceHidden":Z
    .end local v21    # "startingInUnForceHiding":Z
    .end local v22    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v24    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v25    # "wallpaperInUnForceHiding":Z
    :cond_15
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v31, :cond_16

    const-string v31, "WindowAnimator"

    const-string v32, "updateWindowsLocked: StatusBar is no longer keyguard"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_16
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 253
    invoke-virtual/range {v29 .. v29}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto/16 :goto_1

    .line 277
    .restart local v11    # "canBeForceHidden":Z
    .restart local v15    # "flags":I
    .restart local v18    # "nowAnimating":Z
    .restart local v20    # "shouldBeForceHidden":Z
    .restart local v21    # "startingInUnForceHiding":Z
    .restart local v22    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .restart local v24    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v25    # "wallpaperInUnForceHiding":Z
    .restart local v26    # "wasAnimating":Z
    :cond_17
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 280
    .restart local v8    # "appWindowAnimating":Z
    .restart local v17    # "newSurface":Z
    :cond_18
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 284
    .restart local v27    # "wasAppWindowAnimating":Z
    :cond_19
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 285
    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 286
    .restart local v5    # "anyAnimating":Z
    :cond_1b
    const/4 v6, 0x0

    goto/16 :goto_7

    .line 291
    .restart local v6    # "anyWasAnimating":Z
    :cond_1c
    :try_start_1
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1d

    const/16 v19, 0x1

    goto/16 :goto_8

    :cond_1d
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 297
    :cond_1e
    if-nez v5, :cond_6

    if-eqz v6, :cond_6

    .line 298
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v31, v0

    invoke-interface/range {v31 .. v31}, Landroid/view/IWindow;->onAnimationStopped()V

    .line 299
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v31, :cond_6

    .line 300
    const-string v31, "WindowAnimator"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "onAnimationStopped: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 302
    :catch_0
    move-exception v13

    .line 303
    .local v13, "e":Landroid/os/RemoteException;
    const-string v31, "WindowAnimator"

    const-string v32, "Failed to dispatch window animation state change."

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 333
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v31, v0

    if-eqz v31, :cond_c

    if-nez v18, :cond_c

    .line 335
    const-string v31, "WindowAnimator"

    const-string v32, "Timeout waiting for animation to startup"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    const-wide/16 v32, 0x0

    const-wide/16 v34, 0x0

    invoke-interface/range {v31 .. v35}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 337
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    goto/16 :goto_a

    .line 343
    :cond_20
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v31

    if-eqz v31, :cond_21

    const/16 v31, 0x1

    :goto_e
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mForceHiding:I

    goto/16 :goto_b

    :cond_21
    const/16 v31, 0x0

    goto :goto_e

    .line 355
    :cond_22
    if-eqz v11, :cond_f

    .line 356
    if-eqz v20, :cond_25

    .line 357
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 361
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v31, :cond_23

    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v31, :cond_24

    :cond_23
    const-string v31, "WindowAnimator"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Now policy hidden: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_24
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->requestWallpaper(Lcom/android/server/wm/WindowState;)I

    move-result v31

    if-eqz v31, :cond_f

    .line 419
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v31, v0

    or-int/lit8 v31, v31, 0x2

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 420
    const/16 v31, 0x0

    const/16 v32, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 422
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v31, :cond_f

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    const-string v32, "updateWindowsAndWallpaperLocked 4"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v33

    invoke-virtual/range {v31 .. v33}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 364
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v31

    if-nez v31, :cond_27

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    move/from16 v31, v0

    if-nez v31, :cond_27

    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v31

    if-eqz v31, :cond_27

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-nez v31, :cond_27

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    move/from16 v31, v0

    if-nez v31, :cond_27

    if-nez p1, :cond_27

    const/4 v9, 0x1

    .line 374
    .local v9, "applyExistingExitAnimation":Z
    :goto_10
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v31

    if-nez v31, :cond_26

    if-eqz v9, :cond_14

    .line 377
    :cond_26
    invoke-virtual/range {v28 .. v28}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v23

    .line 378
    .local v23, "visibleNow":Z
    if-nez v23, :cond_28

    .line 380
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_d

    .line 364
    .end local v9    # "applyExistingExitAnimation":Z
    .end local v23    # "visibleNow":Z
    :cond_27
    const/4 v9, 0x0

    goto :goto_10

    .line 383
    .restart local v9    # "applyExistingExitAnimation":Z
    .restart local v23    # "visibleNow":Z
    :cond_28
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v31, :cond_29

    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v31, :cond_2a

    :cond_29
    const-string v31, "WindowAnimator"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Now policy shown: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    move/from16 v31, v0

    and-int/lit8 v31, v31, 0x4

    if-eqz v31, :cond_30

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    move-object/from16 v31, v0

    if-nez v31, :cond_30

    .line 387
    if-nez v22, :cond_2b

    .line 388
    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 390
    .restart local v22    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_2b
    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->requestWallpaper(Lcom/android/server/wm/WindowState;)I

    move-result v31

    if-eqz v31, :cond_2c

    .line 392
    const/16 v25, 0x1

    .line 394
    :cond_2c
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v31, v0

    const/16 v32, 0x3

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_2d

    .line 395
    const/16 v21, 0x1

    .line 408
    :cond_2d
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v12, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 409
    .local v12, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v12, :cond_2e

    iget v0, v12, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v31, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v32, v0

    move/from16 v0, v31

    move/from16 v1, v32

    if-ge v0, v1, :cond_24

    .line 413
    :cond_2e
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v31, :cond_2f

    const-string v31, "WindowAnimator"

    const-string v32, "updateWindowsLocked: setting mFocusMayChange true"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_f

    .line 397
    .end local v12    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_30
    if-eqz v9, :cond_2d

    .line 400
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v31, :cond_31

    const-string v31, "WindowAnimator"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Applying existing Keyguard exit animation to new window: win="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v33, v0

    invoke-interface/range {v31 .. v33}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v4

    .line 405
    .local v4, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-virtual {v0, v4, v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    .line 406
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    goto/16 :goto_11

    .line 432
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v5    # "anyAnimating":Z
    .end local v6    # "anyWasAnimating":Z
    .end local v8    # "appWindowAnimating":Z
    .end local v9    # "applyExistingExitAnimation":Z
    .end local v17    # "newSurface":Z
    .end local v18    # "nowAnimating":Z
    .end local v23    # "visibleNow":Z
    .end local v26    # "wasAnimating":Z
    .end local v27    # "wasAppWindowAnimating":Z
    :cond_32
    if-eqz v11, :cond_f

    .line 433
    if-eqz v20, :cond_33

    .line 434
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_c

    .line 436
    :cond_33
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto/16 :goto_c

    .line 471
    .end local v11    # "canBeForceHidden":Z
    .end local v15    # "flags":I
    .end local v20    # "shouldBeForceHidden":Z
    .end local v28    # "win":Lcom/android/server/wm/WindowState;
    .end local v29    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_34
    if-eqz v22, :cond_3b

    .line 472
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    move/from16 v31, v0

    if-nez v31, :cond_38

    .line 473
    const/4 v14, 0x1

    .line 474
    .local v14, "first":Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v31

    add-int/lit8 v16, v31, -0x1

    :goto_12
    if-ltz v16, :cond_39

    .line 475
    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/WindowStateAnimator;

    .line 476
    .restart local v29    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v32, v0

    if-eqz v25, :cond_37

    if-nez v21, :cond_37

    const/16 v31, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v33, v0

    move-object/from16 v0, v32

    move/from16 v1, v31

    move/from16 v2, v33

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v4

    .line 479
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_36

    .line 480
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v31, :cond_35

    const-string v31, "WindowAnimator"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Starting keyguard exit animation on window "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    move-object/from16 v33, v0

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_35
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 483
    const/16 v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 484
    if-eqz v14, :cond_36

    .line 485
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v32, v0

    invoke-virtual/range {v31 .. v33}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 487
    const/4 v14, 0x0

    .line 474
    :cond_36
    add-int/lit8 v16, v16, -0x1

    goto :goto_12

    .line 476
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_37
    const/16 v31, 0x0

    goto :goto_13

    .line 491
    .end local v14    # "first":Z
    .end local v29    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_38
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v31, v0

    if-eqz v31, :cond_39

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    invoke-interface/range {v31 .. v35}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 493
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 498
    :cond_39
    if-nez v25, :cond_3b

    if-eqz v24, :cond_3b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayDisableWindowAnimations:Z

    move/from16 v31, v0

    if-nez v31, :cond_3b

    .line 500
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v31, :cond_3a

    const-string v31, "WindowAnimator"

    const-string v32, "updateWindowsLocked: wallpaper animating away"

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAwayToNotificationShade:Z

    move/from16 v32, v0

    invoke-interface/range {v31 .. v32}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v4

    .line 503
    .restart local v4    # "a":Landroid/view/animation/Animation;
    if-eqz v4, :cond_3b

    .line 504
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 509
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    if-eqz v31, :cond_3c

    .line 511
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    move/from16 v31, v0

    if-eqz v31, :cond_3d

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v34

    add-long v32, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v34

    invoke-interface/range {v31 .. v35}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 515
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/WindowAnimator;->mKeyguardGoingAway:Z

    .line 528
    :cond_3c
    :goto_14
    return-void

    .line 520
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v31

    if-nez v31, :cond_3e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    move-wide/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v34

    sub-long v32, v32, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v34

    cmp-long v31, v32, v34

    if-lez v31, :cond_3c

    .line 524
    :cond_3e
    sget-boolean v31, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v31, :cond_3f

    const-string v31, "WindowAnimator"

    const-string v32, "Done with Keyguard exit animations."

    invoke-static/range {v31 .. v32}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_3f
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowAnimator;->mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    goto :goto_14
.end method


# virtual methods
.method addDisplayLocked(I)V
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 136
    if-nez p1, :cond_0

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 139
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 796
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 797
    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 799
    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_3

    .line 800
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 801
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 802
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 804
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 806
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 807
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 808
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 809
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 810
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 807
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 812
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_0
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_2

    .line 813
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 818
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 799
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 815
    :cond_2
    if-eqz p3, :cond_1

    .line 816
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 821
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 823
    if-eqz p3, :cond_4

    .line 824
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 825
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 826
    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowAnimator;->forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    iget-wide v8, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    :cond_4
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    if-eqz v8, :cond_5

    .line 831
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 832
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 833
    iget v8, p0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    invoke-static {v8}, Lcom/android/server/wm/WindowAnimator;->bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_6

    .line 836
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 837
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 839
    :cond_6
    return-void
.end method

.method getPendingLayoutChanges(I)I
    .locals 3
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 842
    if-gez p1, :cond_1

    .line 846
    :cond_0
    :goto_0
    return v1

    .line 845
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 846
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .locals 1
    .param p1, "displayId"    # I

    .prologue
    .line 889
    if-gez p1, :cond_0

    .line 890
    const/4 v0, 0x0

    .line 892
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    goto :goto_0
.end method

.method removeDisplayLocked(I)V
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 143
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 146
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 151
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V
    .locals 4
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    .line 861
    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 862
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 863
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-ne p4, v2, :cond_1

    .line 864
    invoke-virtual {p0, p4, p2}, Lcom/android/server/wm/WindowAnimator;->setPendingLayoutChanges(II)V

    .line 865
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, p4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v3

    invoke-virtual {v2, p3, v3}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 871
    :cond_0
    return-void

    .line 862
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method setPendingLayoutChanges(II)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    .prologue
    .line 850
    if-gez p1, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 854
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 855
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_0
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    .line 883
    if-ltz p1, :cond_0

    .line 884
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowAnimator;->getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 886
    :cond_0
    return-void
.end method
