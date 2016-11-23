.class public Lcom/android/internal/telephony/logdigger/LogDigger;
.super Ljava/lang/Object;
.source "LogDigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;
    }
.end annotation


# static fields
.field private static final INTENT_LOGDIGGER_SET_PROP:Ljava/lang/String; = "android.intent.action.letv.LOGDIGGER_PROP_SET_REQ"

.field private static final TAG:Ljava/lang/String; = "LogDigger"

.field private static final instance:Lcom/android/internal/telephony/logdigger/LogDigger;

.field private static mLogName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/android/internal/telephony/logdigger/LogDigger;

    invoke-direct {v0}, Lcom/android/internal/telephony/logdigger/LogDigger;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/logdigger/LogDigger;->instance:Lcom/android/internal/telephony/logdigger/LogDigger;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/android/internal/telephony/logdigger/LogDigger;->mLogName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/internal/telephony/logdigger/LogDigger;->mLogName:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/logdigger/LogDigger;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/internal/telephony/logdigger/LogDigger;->instance:Lcom/android/internal/telephony/logdigger/LogDigger;

    return-object v0
.end method

.method public static logDiggerEvent(Lcom/android/internal/telephony/PhoneBase;III)V
    .locals 2
    .param p0, "pb"    # Lcom/android/internal/telephony/PhoneBase;
    .param p1, "category"    # I
    .param p2, "type"    # I
    .param p3, "cause"    # I

    .prologue
    .line 33
    invoke-static {}, Lcom/android/internal/telephony/logdigger/SystemTechInfo;->isDebugType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/logdigger/SystemTechInfo;->isQcPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->getInstance()Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/logdigger/LogDigger$LogDiggerAgent;->CollectInfo(Lcom/android/internal/telephony/PhoneBase;III)V

    .line 35
    invoke-static {p0}, Lcom/android/internal/telephony/logdigger/LogDigger;->saveF3Log(Lcom/android/internal/telephony/PhoneBase;)V

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string v0, "LogDigger"

    const-string v1, "logDiggerEvent: current ver is not userdebug or is not Qc platform!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static saveF3Log(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 5
    .param p0, "pb"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    const-string v1, "LogDigger"

    const-string v2, "saveF3Log begin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x2

    filled-new-array {v4, v1}, [I

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 102
    .local v0, "startF3":[[Ljava/lang/String;
    aget-object v1, v0, v3

    const-string v2, "ctl.start"

    aput-object v2, v1, v3

    .line 103
    aget-object v1, v0, v3

    const-string v2, "fetch_f3"

    aput-object v2, v1, v4

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/android/internal/telephony/logdigger/LogDigger;->sendIntent(Landroid/content/Context;I[[Ljava/lang/String;)V

    .line 105
    const-string v1, "LogDigger"

    const-string v2, "saveF3Log:  end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return-void
.end method

.method private static sendIntent(Landroid/content/Context;I[[Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "num"    # I
    .param p2, "nv"    # [[Ljava/lang/String;

    .prologue
    .line 108
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.letv.LOGDIGGER_PROP_SET_REQ"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "prop_num"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prop_name_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prop_val_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    return-void
.end method


# virtual methods
.method public setLogFileName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    sput-object p1, Lcom/android/internal/telephony/logdigger/LogDigger;->mLogName:Ljava/lang/String;

    .line 97
    return-void
.end method
