.class final Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DragInputEventReceiver"
.end annotation


# instance fields
.field private mIsStartEvent:Z

.field private mStylusButtonDownAtStart:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    .line 842
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    .line 843
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 847
    const/4 v3, 0x0

    .line 849
    .local v3, "handled":Z
    :try_start_0
    instance-of v9, p1, Landroid/view/MotionEvent;

    if-eqz v9, :cond_5

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v9, :cond_5

    .line 852
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v5, v0

    .line 853
    .local v5, "motionEvent":Landroid/view/MotionEvent;
    const/4 v2, 0x0

    .line 854
    .local v2, "endDrag":Z
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 855
    .local v6, "newX":F
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 856
    .local v7, "newY":F
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v9

    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_6

    .line 859
    .local v4, "isStylusButtonDown":Z
    :goto_0
    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    if-eqz v8, :cond_1

    .line 860
    if-eqz v4, :cond_0

    .line 863
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 865
    :cond_0
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z

    .line 868
    :cond_1
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 904
    :cond_2
    :goto_1
    if-eqz v2, :cond_4

    .line 905
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v8, :cond_3

    const-string v8, "WindowManager"

    const-string v9, "Drag ended; tearing down state"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_3
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 908
    :try_start_1
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 909
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 910
    const/4 v8, 0x0

    :try_start_2
    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    .line 911
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mIsStartEvent:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 914
    :cond_4
    const/4 v3, 0x1

    .line 919
    .end local v2    # "endDrag":Z
    .end local v4    # "isStylusButtonDown":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :cond_5
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 921
    :goto_2
    return-void

    .restart local v2    # "endDrag":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :cond_6
    move v4, v8

    .line 856
    goto :goto_0

    .line 870
    .restart local v4    # "isStylusButtonDown":Z
    :pswitch_0
    :try_start_3
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v8, :cond_2

    .line 871
    const-string v8, "WindowManager"

    const-string v9, "Unexpected ACTION_DOWN in drag layer"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 916
    .end local v2    # "endDrag":Z
    .end local v4    # "isStylusButtonDown":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :catch_0
    move-exception v1

    .line 917
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v8, "WindowManager"

    const-string v9, "Exception caught by drag handleMotion"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 919
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    goto :goto_2

    .line 876
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "endDrag":Z
    .restart local v4    # "isStylusButtonDown":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :pswitch_1
    :try_start_5
    iget-boolean v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->mStylusButtonDownAtStart:Z

    if-eqz v8, :cond_8

    if-nez v4, :cond_8

    .line 877
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v8, :cond_7

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Button no longer pressed; dropping at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_7
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 880
    :try_start_6
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v2

    .line 881
    monitor-exit v9

    goto :goto_1

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v8
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 919
    .end local v2    # "endDrag":Z
    .end local v4    # "isStylusButtonDown":Z
    .end local v5    # "motionEvent":Landroid/view/MotionEvent;
    .end local v6    # "newX":F
    .end local v7    # "newY":F
    :catchall_1
    move-exception v8

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v8

    .line 883
    .restart local v2    # "endDrag":Z
    .restart local v4    # "isStylusButtonDown":Z
    .restart local v5    # "motionEvent":Landroid/view/MotionEvent;
    .restart local v6    # "newX":F
    .restart local v7    # "newY":F
    :cond_8
    :try_start_8
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 885
    :try_start_9
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyMoveLw(FF)V

    .line 886
    monitor-exit v9

    goto/16 :goto_1

    :catchall_2
    move-exception v8

    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v8

    .line 891
    :pswitch_2
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v8, :cond_9

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got UP on move channel; dropping at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_9
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v8, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 894
    :try_start_b
    iget-object v8, p0, Lcom/android/server/wm/WindowManagerService$DragInputEventReceiver;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v8, v6, v7}, Lcom/android/server/wm/DragState;->notifyDropLw(FF)Z

    move-result v2

    .line 895
    monitor-exit v9

    goto/16 :goto_1

    :catchall_3
    move-exception v8

    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v8

    .line 899
    :pswitch_3
    sget-boolean v8, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v8, :cond_a

    const-string v8, "WindowManager"

    const-string v9, "Drag cancelled!"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 900
    :cond_a
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 909
    :catchall_4
    move-exception v8

    :try_start_d
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw v8
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 868
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
