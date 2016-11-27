.class Lcom/letv/leui/widget/LockPatternHelper$2;
.super Ljava/lang/Object;
.source "LockPatternHelper.java"

# interfaces
.implements Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LockPatternHelper;->doError(Ljava/util/ArrayList;[[Z)V
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
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternHelper$2;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorLineAnim(FFI)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "times"    # I

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternHelper$2;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    # getter for: Lcom/letv/leui/widget/LockPatternHelper;->mErrorCells:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/letv/leui/widget/LockPatternHelper;->access$300(Lcom/letv/leui/widget/LockPatternHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternHelper$2;->this$0:Lcom/letv/leui/widget/LockPatternHelper;

    # getter for: Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternRings:[[Lcom/letv/leui/widget/LockPatternRing;
    invoke-static {v2}, Lcom/letv/leui/widget/LockPatternHelper;->access$400(Lcom/letv/leui/widget/LockPatternHelper;)[[Lcom/letv/leui/widget/LockPatternRing;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockPatternRing;->resetRing()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
