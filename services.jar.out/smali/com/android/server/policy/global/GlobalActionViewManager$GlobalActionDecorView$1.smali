.class Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView$1;
.super Ljava/lang/Object;
.source "GlobalActionViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView$1;->this$1:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView$1;->this$1:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView$1;->this$1:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v0, v0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->this$0:Lcom/android/server/policy/global/GlobalActionViewManager;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    :cond_0
    return-void
.end method
