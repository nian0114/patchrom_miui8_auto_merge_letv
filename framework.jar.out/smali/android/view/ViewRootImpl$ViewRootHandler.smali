.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 3543
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3546
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3596
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3548
    :pswitch_1
    const-string v0, "MSG_INVALIDATE"

    goto :goto_0

    .line 3550
    :pswitch_2
    const-string v0, "MSG_INVALIDATE_RECT"

    goto :goto_0

    .line 3552
    :pswitch_3
    const-string v0, "MSG_DIE"

    goto :goto_0

    .line 3554
    :pswitch_4
    const-string v0, "MSG_RESIZED"

    goto :goto_0

    .line 3556
    :pswitch_5
    const-string v0, "MSG_RESIZED_REPORT"

    goto :goto_0

    .line 3558
    :pswitch_6
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    goto :goto_0

    .line 3560
    :pswitch_7
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    goto :goto_0

    .line 3562
    :pswitch_8
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    goto :goto_0

    .line 3564
    :pswitch_9
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    goto :goto_0

    .line 3566
    :pswitch_a
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    goto :goto_0

    .line 3568
    :pswitch_b
    const-string v0, "MSG_FINISH_INPUT_CONNECTION"

    goto :goto_0

    .line 3570
    :pswitch_c
    const-string v0, "MSG_CHECK_FOCUS"

    goto :goto_0

    .line 3572
    :pswitch_d
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    goto :goto_0

    .line 3574
    :pswitch_e
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    goto :goto_0

    .line 3576
    :pswitch_f
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_0

    .line 3578
    :pswitch_10
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_0

    .line 3580
    :pswitch_11
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    goto :goto_0

    .line 3582
    :pswitch_12
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    goto :goto_0

    .line 3584
    :pswitch_13
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    goto :goto_0

    .line 3586
    :pswitch_14
    const-string v0, "MSG_DISPATCH_WINDOW_ANIMATION_STARTED"

    goto :goto_0

    .line 3588
    :pswitch_15
    const-string v0, "MSG_DISPATCH_WINDOW_ANIMATION_STOPPED"

    goto :goto_0

    .line 3590
    :pswitch_16
    const-string v0, "MSG_WINDOW_MOVED"

    goto :goto_0

    .line 3592
    :pswitch_17
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    goto :goto_0

    .line 3594
    :pswitch_18
    const-string v0, "MSG_DISPATCH_WINDOW_SHOWN"

    goto :goto_0

    .line 3546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3601
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 3856
    :cond_0
    :goto_0
    return-void

    .line 3603
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3606
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 3607
    .local v21, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    move-object/from16 v0, v21

    iget-object v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    move-object/from16 v0, v21

    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    move-object/from16 v0, v21

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    move-object/from16 v0, v21

    iget v6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 3608
    invoke-virtual/range {v21 .. v21}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_0

    .line 3611
    .end local v21    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 3612
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_0

    .line 3615
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 3618
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto :goto_0

    .line 3622
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/os/SomeArgs;

    .line 3623
    .local v14, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v3, v14, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 3634
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_2
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3635
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/os/SomeArgs;

    .line 3637
    .restart local v14    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v15, v14, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v15, Landroid/content/res/Configuration;

    .line 3638
    .local v15, "config":Landroid/content/res/Configuration;
    if-eqz v15, :cond_3

    .line 3639
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 3642
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3643
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3644
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3645
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3646
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3647
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v2, v14, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3649
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3651
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 3652
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 3655
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 3656
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/View;)V

    .line 3659
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3663
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v15    # "config":Landroid/content/res/Configuration;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3664
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v28

    .line 3665
    .local v28, "w":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 3666
    .local v18, "h":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    .line 3667
    .local v22, "l":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    .line 3668
    .local v27, "t":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v22

    iput v0, v2, Landroid/graphics/Rect;->left:I

    .line 3669
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v3, v22, v28

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 3670
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v27

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 3671
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v3, v27, v18

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 3673
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_6

    .line 3674
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/View;)V

    .line 3676
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3680
    .end local v18    # "h":I
    .end local v22    # "l":I
    .end local v27    # "t":I
    .end local v28    # "w":I
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 3681
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_d

    const/16 v19, 0x1

    .line 3682
    .local v19, "hasWindowFocus":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v19

    iput-boolean v0, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 3684
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v19

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Z)V

    .line 3686
    if-eqz v19, :cond_7

    .line 3687
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_e

    const/16 v20, 0x1

    .line 3688
    .local v20, "inTouchMode":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v20

    # invokes: Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;Z)Z

    .line 3690
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3691
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3693
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v23, v0

    .line 3694
    .local v23, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v23, :cond_f

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 3695
    .local v7, "surfaceInsets":Landroid/graphics/Rect;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v3, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v4, v4, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v2 .. v7}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3713
    .end local v7    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v20    # "inTouchMode":Z
    .end local v23    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v3}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v3

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 3716
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 3717
    .local v8, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3718
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v19

    invoke-virtual {v8, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 3720
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 3721
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 3722
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 3723
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 3726
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_IMF:Z
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3727
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handle MSG_WINDOW_FOCUS_CHANGED: hasWindowFocus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastWasImTarget = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", softInputMode = #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", window flags = #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mView = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", this = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    :cond_a
    if-eqz v19, :cond_c

    .line 3739
    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 3740
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v9, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v11, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v2, :cond_11

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v13, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v8 .. v13}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 3746
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3748
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3751
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 3754
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3755
    if-eqz v19, :cond_0

    .line 3756
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 3681
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "hasWindowFocus":Z
    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 3687
    .restart local v19    # "hasWindowFocus":Z
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_3

    .line 3694
    .restart local v20    # "inTouchMode":Z
    .restart local v23    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 3697
    .end local v23    # "lp":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v16

    .line 3698
    .local v16, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "ViewRootImpl"

    const-string v3, "OutOfResourcesException locking surface"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3700
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 3701
    const-string v2, "ViewRootImpl"

    const-string v3, "No processes killed for memory; killing self"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3707
    :cond_10
    :goto_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3740
    .end local v16    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v20    # "inTouchMode":Z
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 3763
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "hasWindowFocus":Z
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_0

    .line 3766
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/os/SomeArgs;

    .line 3767
    .restart local v14    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/InputEvent;

    .line 3768
    .local v17, "event":Landroid/view/InputEvent;
    iget-object v0, v14, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/view/InputEventReceiver;

    .line 3769
    .local v24, "receiver":Landroid/view/InputEventReceiver;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 3770
    invoke-virtual {v14}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 3773
    .end local v14    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v17    # "event":Landroid/view/InputEvent;
    .end local v24    # "receiver":Landroid/view/InputEventReceiver;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/InputEvent;

    .line 3774
    .restart local v17    # "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3777
    .end local v17    # "event":Landroid/view/InputEvent;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->LOCAL_LOGV:Z
    invoke-static {v2}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dispatching key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from IME to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/KeyEvent;

    .line 3781
    .local v17, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_13

    .line 3785
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v17

    .line 3788
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3791
    .end local v17    # "event":Landroid/view/KeyEvent;
    :sswitch_d
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 3792
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_0

    .line 3793
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v8, v2}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 3797
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 3798
    .restart local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v8, :cond_0

    .line 3799
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_0

    .line 3803
    .end local v8    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3804
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3809
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/DragEvent;

    .line 3810
    .local v17, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    move-object/from16 v0, v17

    iput-object v2, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 3811
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, v17

    # invokes: Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V
    invoke-static {v2, v0}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .line 3814
    .end local v17    # "event":Landroid/view/DragEvent;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    goto/16 :goto_0

    .line 3817
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Landroid/content/res/Configuration;

    .line 3818
    .restart local v15    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v15, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3819
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v15, v2, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 3821
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v15, v3}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_0

    .line 3824
    .end local v15    # "config":Landroid/content/res/Configuration;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_0

    .line 3827
    :sswitch_14
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 3828
    .local v25, "remainingFrameCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStarted(I)V

    goto/16 :goto_0

    .line 3831
    .end local v25    # "remainingFrameCount":I
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleDispatchWindowAnimationStopped()V

    goto/16 :goto_0

    .line 3834
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 3835
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3840
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;

    .line 3841
    .local v29, "watcher":Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl;->startAppSnapshot(Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;)V

    goto/16 :goto_0

    .line 3844
    .end local v29    # "watcher":Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->stopAppSnapshot()V

    goto/16 :goto_0

    .line 3847
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;

    .line 3848
    .restart local v29    # "watcher":Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    .line 3849
    .local v26, "resultCode":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewRootImpl;->failedAppSnapshot(Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;I)V

    goto/16 :goto_0

    .line 3853
    .end local v26    # "resultCode":I
    .end local v29    # "watcher":Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    goto/16 :goto_0

    .line 3704
    .restart local v16    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v19    # "hasWindowFocus":Z
    .restart local v20    # "inTouchMode":Z
    :catch_1
    move-exception v2

    goto/16 :goto_6

    .line 3601
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_9
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_8
        0x7 -> :sswitch_a
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xb -> :sswitch_c
        0xc -> :sswitch_d
        0xd -> :sswitch_e
        0xe -> :sswitch_f
        0xf -> :sswitch_10
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_2
        0x15 -> :sswitch_13
        0x16 -> :sswitch_16
        0x17 -> :sswitch_7
        0x18 -> :sswitch_b
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_15
        0x1b -> :sswitch_14
        0x64 -> :sswitch_17
        0x65 -> :sswitch_18
        0x66 -> :sswitch_19
    .end sparse-switch
.end method
