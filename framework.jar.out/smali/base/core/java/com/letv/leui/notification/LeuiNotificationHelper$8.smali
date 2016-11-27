.class Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$8;
.super Ljava/lang/Object;
.source "LeuiNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/HashMap;)V
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
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$8;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$8;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # invokes: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationSubscriptMapFromFile()V
    invoke-static {v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$1200(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$8;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # invokes: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationSubscriptSettingMapFromFile()V
    invoke-static {v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$1300(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$8;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # invokes: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationOnKeyguardEnableMapFromFile()V
    invoke-static {v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$1400(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$8;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # invokes: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationHeadsUpEnableMapFromFile()V
    invoke-static {v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$1500(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    return-void
.end method
