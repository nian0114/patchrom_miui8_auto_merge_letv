.class Landroid/widget/AppSecurityPermissions$1;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AppSecurityPermissions;->getPermissionSetupView(Landroid/app/AppOpsUtils$AppOpsItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AppSecurityPermissions;

.field final synthetic val$permItem:Landroid/app/AppOpsUtils$AppOpsItem;


# direct methods
.method constructor <init>(Landroid/widget/AppSecurityPermissions;Landroid/app/AppOpsUtils$AppOpsItem;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/AppSecurityPermissions$1;->this$0:Landroid/widget/AppSecurityPermissions;

    iput-object p2, p0, Landroid/widget/AppSecurityPermissions$1;->val$permItem:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x1

    .local v0, "permRelult":I
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/widget/AppSecurityPermissions$1;->val$permItem:Landroid/app/AppOpsUtils$AppOpsItem;

    iput v0, v1, Landroid/app/AppOpsUtils$AppOpsItem;->mode:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
