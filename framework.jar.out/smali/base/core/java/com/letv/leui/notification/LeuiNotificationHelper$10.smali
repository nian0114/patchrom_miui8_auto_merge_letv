.class Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;
.super Ljava/lang/Object;
.source "LeuiNotificationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->setNotificationSubscriptEnable(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

.field final synthetic val$enable:Z

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 554
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iput-object p2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$pkg:Ljava/lang/String;

    iput-boolean p3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 557
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$pkg:Ljava/lang/String;

    # invokes: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLinkPkg(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$2000(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 558
    .local v0, "linkPkg":Ljava/lang/String;
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # getter for: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;
    invoke-static {v2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$2100(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$pkg:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 559
    .local v1, "oldValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "oldValue":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_0
    iget-boolean v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$enable:Z

    if-eq v2, v5, :cond_2

    .line 560
    :cond_0
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # getter for: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;
    invoke-static {v2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$2100(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$pkg:Ljava/lang/String;

    iget-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$enable:Z

    if-eqz v2, :cond_4

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$pkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 562
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # getter for: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;
    invoke-static {v2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$2100(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;

    move-result-object v5

    iget-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$enable:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    const-string v6, "android.os.action.ACTION_NOTIFICATION_SUBSCRIPT_SETTING_CHANGED"

    iget-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$enable:Z

    if-eqz v2, :cond_6

    move v2, v3

    :goto_3
    const-string v7, ".LetvClone"

    invoke-virtual {v0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    # invokes: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->broadcastSubscriptChange(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v5, v6, v0, v2, v7}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$1900(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 566
    :cond_1
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # getter for: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$2200(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # getter for: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$2200(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v5, v6, v7}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 568
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    # setter for: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptSettingsNeedSave:Z
    invoke-static {v2, v3}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$602(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z

    .line 570
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->this$0:Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    const-string v5, "android.os.action.ACTION_NOTIFICATION_SUBSCRIPT_SETTING_CHANGED"

    iget-object v6, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$pkg:Ljava/lang/String;

    iget-boolean v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$enable:Z

    if-eqz v7, :cond_7

    :goto_4
    iget-object v4, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;->val$pkg:Ljava/lang/String;

    const-string v7, ".LetvClone"

    invoke-virtual {v4, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    # invokes: Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->broadcastSubscriptChange(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v2, v5, v6, v3, v4}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->access$1900(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 572
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 559
    goto :goto_0

    :cond_4
    move v2, v4

    .line 560
    goto :goto_1

    :cond_5
    move v2, v4

    .line 562
    goto :goto_2

    :cond_6
    move v2, v4

    .line 563
    goto :goto_3

    :cond_7
    move v3, v4

    .line 570
    goto :goto_4
.end method
