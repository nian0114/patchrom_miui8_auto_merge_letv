.class public Lcom/letv/leui/widget/LeEmptyViewHelper;
.super Ljava/lang/Object;
.source "LeEmptyViewHelper.java"


# static fields
.field private static final ACTION_NETWORK:I = 0x2

.field private static final ACTION_NETWORK_STR:Ljava/lang/String; = "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

.field private static final ACTION_WIFI:I = 0x1

.field private static final ACTION_WIFI_STR:Ljava/lang/String; = "android.settings.WIFI_SETTINGS"

.field public static final TYPE_NETWORK_ABNORMAL:I = 0x2

.field public static final TYPE_NO_NETWORK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 11
    invoke-static {p0, p1}, Lcom/letv/leui/widget/LeEmptyViewHelper;->handleAction(Landroid/content/Context;I)V

    return-void
.end method

.method private static handleAction(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, "intent":Landroid/content/Intent;
    packed-switch p1, :pswitch_data_0

    .line 51
    :goto_0
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 54
    :cond_0
    return-void

    .line 45
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 48
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static initViewAction(Landroid/content/Context;ILcom/letv/leui/widget/LeEmptyView;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "emptyView"    # Lcom/letv/leui/widget/LeEmptyView;

    .prologue
    .line 16
    packed-switch p1, :pswitch_data_0

    .line 33
    :goto_0
    return-void

    .line 19
    :pswitch_0
    invoke-virtual {p2}, Lcom/letv/leui/widget/LeEmptyView;->getPrimaryBtn()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/LeEmptyViewHelper$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeEmptyViewHelper$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    invoke-virtual {p2}, Lcom/letv/leui/widget/LeEmptyView;->getSecondBtn()Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/LeEmptyViewHelper$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LeEmptyViewHelper$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 16
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
