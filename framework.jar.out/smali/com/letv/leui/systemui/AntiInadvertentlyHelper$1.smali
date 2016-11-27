.class Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;
.super Landroid/database/ContentObserver;
.source "AntiInadvertentlyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->initSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    iput-object p3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;->val$cr:Landroid/content/ContentResolver;

    const-string v4, "leui_anti_inadvertently"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    # setter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isSettingEnable:Z
    invoke-static {v3, v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$002(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)Z

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isSettingEnable:Z
    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$000(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$1;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isVrDeviceIn:Z
    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$200(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    # setter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
