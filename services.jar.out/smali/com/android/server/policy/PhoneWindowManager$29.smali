.class Lcom/android/server/policy/PhoneWindowManager$29;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;

.field final synthetic val$SystemUIWindowDiff:Z

.field final synthetic val$lp:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$needsMenu:Z

.field final synthetic val$systemUiIconColor:I

.field final synthetic val$visibility:I

.field final synthetic val$win:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;ILandroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;IZZ)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$visibility:I

    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object p4, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iput p5, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$systemUiIconColor:I

    iput-boolean p6, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$needsMenu:Z

    iput-boolean p7, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$SystemUIWindowDiff:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$visibility:I

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$win:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiVisibility(IILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$systemUiIconColor:I

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->setSystemUiIconColor(I)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$needsMenu:Z

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->topAppWindowChanged(Z)V

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$SystemUIWindowDiff:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->val$lp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->leuiFlags:I

    invoke-interface {v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->updateSystemUIWindowFlag(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$29;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method
