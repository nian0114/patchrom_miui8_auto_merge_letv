.class Lcom/android/server/pm/AdbCmdDialog$Refuse;
.super Ljava/lang/Object;
.source "AdbCmdDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/AdbCmdDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Refuse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/AdbCmdDialog;


# direct methods
.method constructor <init>(Lcom/android/server/pm/AdbCmdDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/AdbCmdDialog$Refuse;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/AdbCmdDialog$Refuse;->this$0:Lcom/android/server/pm/AdbCmdDialog;

    # getter for: Lcom/android/server/pm/AdbCmdDialog;->mHandler:Lcom/android/server/pm/AdbCmdDialog$DialogHandler;
    invoke-static {v0}, Lcom/android/server/pm/AdbCmdDialog;->access$300(Lcom/android/server/pm/AdbCmdDialog;)Lcom/android/server/pm/AdbCmdDialog$DialogHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AdbCmdDialog$DialogHandler;->sendEmptyMessage(I)Z

    return-void
.end method
