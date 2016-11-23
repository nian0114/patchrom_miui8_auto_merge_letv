.class public Lcom/android/internal/telephony/logdigger/MLogCollector;
.super Ljava/lang/Object;
.source "MLogCollector.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MLogCollector"

.field private static final VDBG:Z

.field private static sInstance:Lcom/android/internal/telephony/logdigger/MLogCollector;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field final mDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/internal/telephony/logdigger/PhoneModel;",
            ">;"
        }
    .end annotation
.end field

.field public mFileName:Ljava/lang/String;

.field final mHandler:Landroid/os/Handler;

.field mHandlerTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/internal/telephony/logdigger/MLogCollector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/logdigger/MLogCollector;->LOG_TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/logdigger/MLogCollector;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/logdigger/MLogCollector;->mFileName:Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/logdigger/MLogCollector;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/logdigger/MLogCollector;->mDataList:Ljava/util/LinkedList;

    .line 53
    new-instance v0, Lcom/android/internal/telephony/logdigger/MLogCollector$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/logdigger/MLogCollector$1;-><init>(Lcom/android/internal/telephony/logdigger/MLogCollector;)V

    iput-object v0, p0, Lcom/android/internal/telephony/logdigger/MLogCollector;->mHandlerTask:Ljava/lang/Runnable;

    .line 41
    const-string v0, "fileName"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/logdigger/AssertUtil;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/android/internal/telephony/logdigger/MLogCollector;->mFileName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/android/internal/telephony/logdigger/MLogCollector;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v1, Lcom/android/internal/telephony/logdigger/MLogCollector;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/logdigger/MLogCollector;->sInstance:Lcom/android/internal/telephony/logdigger/MLogCollector;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/android/internal/telephony/logdigger/MLogCollector;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/logdigger/MLogCollector;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/logdigger/MLogCollector;->sInstance:Lcom/android/internal/telephony/logdigger/MLogCollector;

    .line 36
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/logdigger/MLogCollector;->sInstance:Lcom/android/internal/telephony/logdigger/MLogCollector;

    monitor-exit v1

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public read(Lcom/android/internal/telephony/logdigger/PhoneModel;)V
    .locals 2
    .param p1, "msg"    # Lcom/android/internal/telephony/logdigger/PhoneModel;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/telephony/logdigger/MLogCollector;->mDataList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/android/internal/telephony/logdigger/MLogCollector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/logdigger/MLogCollector;->mHandlerTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method
