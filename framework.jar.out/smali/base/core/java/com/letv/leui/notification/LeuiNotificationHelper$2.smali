.class Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$2;
.super Ljava/lang/Object;
.source "LeuiNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;


# direct methods
.method constructor <init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$2;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$2;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iget-boolean v0, v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$2;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # invokes: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->disableProximityLockLocked()V
    invoke-static {v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$200(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    .line 209
    :cond_0
    return-void
.end method
