.class Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;
.super Ljava/lang/Object;
.source "AntiInadvertentlyHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$6;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$1200(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 289
    return-void
.end method
