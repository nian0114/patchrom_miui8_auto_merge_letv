.class Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$5;
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
    .line 293
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$5;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$5;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    const/4 v1, 0x0

    # setter for: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptSettingsNeedSave:Z
    invoke-static {v0, v1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$602(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z

    .line 297
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$5;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # invokes: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->saveNotificationSubscriptSettingMapToFile()V
    invoke-static {v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$700(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    .line 298
    return-void
.end method
