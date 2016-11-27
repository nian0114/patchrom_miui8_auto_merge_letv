.class Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeuiAlarmHoldManagerPlus"
.end annotation


# static fields
.field private static final HOLD_ALARM_THRESHOLD:I = 0x1e

.field private static final HOLD_PKG_LIST:[Ljava/lang/String;


# instance fields
.field private mHoldAlarms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastHoldTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.gms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.android.gsf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.google.android.gsf.login"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->HOLD_PKG_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "nativeData"    # J

    .prologue
    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mLastHoldTime:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-string v0, "AlarmManager"

    const-string v1, "init LeuiAlarmHoldManagerPlus failed, nativeData == 0 !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    const-string v0, "AlarmManager"

    const-string v1, "init LeuiAlarmHoldManagerPlus..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    .prologue
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->removeHoldAlarmLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->removeHoldAlarmLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;Landroid/app/PendingIntent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->removeHoldAlarmLocked(Landroid/app/PendingIntent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;

    .prologue
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mLastHoldTime:J

    return-wide v0
.end method

.method private addHoldAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;)V
    .locals 6
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NULL"

    .local v1, "key":Ljava/lang/String;
    if-nez v0, :cond_3

    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .local v2, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-nez v2, :cond_5

    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .restart local v2    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mLastHoldTime:J

    goto :goto_0

    .end local v2    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .restart local v2    # "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_5
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_2
.end method

.method private removeHoldAlarmLocked(I)Z
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    .local v0, "didRemove":Z
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .local v4, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-ne v5, p1, :cond_4

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private removeHoldAlarmLocked(Landroid/app/PendingIntent;)Z
    .locals 6
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    .local v2, "pkg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .local v3, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "NULL"

    .local v1, "key":Ljava/lang/String;
    if-nez v0, :cond_3

    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private removeHoldAlarmLocked(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->mHoldAlarms:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .local v0, "pkgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final holdAlarm(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 3
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerService$LeuiAlarmHoldManagerPlus;->addHoldAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0
.end method
