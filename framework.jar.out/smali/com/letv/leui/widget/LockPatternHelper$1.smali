.class Lcom/letv/leui/widget/LockPatternHelper$1;
.super Ljava/lang/Object;
.source "LockPatternHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LockPatternHelper;->patternErrorDetected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LockPatternHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LockPatternHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternHelper$1;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper$1;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    # getter for: Lcom/letv/leui/widget/LockPatternHelper;->mIsReset:Z
    invoke-static {v0}, Lcom/letv/leui/widget/LockPatternHelper;->access$000(Lcom/letv/leui/widget/LockPatternHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper$1;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    # getter for: Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;
    invoke-static {v0}, Lcom/letv/leui/widget/LockPatternHelper;->access$100(Lcom/letv/leui/widget/LockPatternHelper;)Lcom/letv/leui/widget/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView;->getHelper()Lcom/letv/leui/widget/LockPatternHelper;

    move-result-object v0

    # invokes: Lcom/letv/leui/widget/LockPatternHelper;->clearAndCancel()V
    invoke-static {v0}, Lcom/letv/leui/widget/LockPatternHelper;->access$200(Lcom/letv/leui/widget/LockPatternHelper;)V

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper$1;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/widget/LockPatternHelper;->mIsReset:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/LockPatternHelper;->access$002(Lcom/letv/leui/widget/LockPatternHelper;Z)Z

    :cond_0
    return-void
.end method
