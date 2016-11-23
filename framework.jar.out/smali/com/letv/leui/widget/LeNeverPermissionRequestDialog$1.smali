.class Lcom/letv/leui/widget/LeNeverPermissionRequestDialog$1;
.super Ljava/lang/Object;
.source "LeNeverPermissionRequestDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog$1;->this$0:Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;

    iput-object p2, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, "in":Landroid/content/Intent;
    iget-object v1, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    iget-object v1, p0, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog$1;->this$0:Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LeNeverPermissionRequestDialog;->disappear()V

    .line 37
    return-void
.end method
