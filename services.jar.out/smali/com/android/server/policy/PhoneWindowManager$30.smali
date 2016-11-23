.class Lcom/android/server/policy/PhoneWindowManager$30;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->updateCustomSystemUiVisibilityLw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$SystemUIIconColorDiff:Z

.field final synthetic val$SystemUIWindowDiff:Z

.field final synthetic val$lp:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$systemUiIconColor:I


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;ZIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .prologue
    .line 8183
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$SystemUIIconColorDiff:Z

    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$systemUiIconColor:I

    iput-boolean p4, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$SystemUIWindowDiff:Z

    iput-object p5, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$lp:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 8187
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 8188
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    .line 8190
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$SystemUIIconColorDiff:Z

    if-eqz v2, :cond_0

    .line 8191
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCustomSystemUiVisibilityLw, try set to:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$systemUiIconColor:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8192
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$systemUiIconColor:I

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiIconColor(I)V

    .line 8193
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$systemUiIconColor:I

    iput v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mLastStatusIconColor:I

    .line 8197
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$SystemUIWindowDiff:Z

    if-eqz v2, :cond_1

    .line 8198
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->updateSystemUIWindowFlag(I)V

    .line 8199
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$30;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    iput v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemuiWindowFlag:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8208
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1
    :goto_0
    return-void

    .line 8203
    :catch_0
    move-exception v0

    .line 8205
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCustomSystemUiVisibilityLw, met exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8206
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$30;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method
