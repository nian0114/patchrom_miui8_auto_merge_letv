.class Lcom/android/internal/telephony/logdigger/MLogCollector$1;
.super Ljava/lang/Object;
.source "MLogCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/logdigger/MLogCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/logdigger/MLogCollector;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/logdigger/MLogCollector;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/telephony/logdigger/MLogCollector$1;->this$0:Lcom/android/internal/telephony/logdigger/MLogCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/logdigger/MLogCollector$1;->this$0:Lcom/android/internal/telephony/logdigger/MLogCollector;

    iget-object v1, v1, Lcom/android/internal/telephony/logdigger/MLogCollector;->mDataList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/internal/telephony/logdigger/MLogCollector$1;->this$0:Lcom/android/internal/telephony/logdigger/MLogCollector;

    iget-object v1, v1, Lcom/android/internal/telephony/logdigger/MLogCollector;->mDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/logdigger/PhoneModel;

    .line 60
    .local v0, "data":Lcom/android/internal/telephony/logdigger/PhoneModel;
    iget-object v1, p0, Lcom/android/internal/telephony/logdigger/MLogCollector$1;->this$0:Lcom/android/internal/telephony/logdigger/MLogCollector;

    iget-object v1, v1, Lcom/android/internal/telephony/logdigger/MLogCollector;->mFileName:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/logdigger/LogWriter;->writeLogToFile(Ljava/lang/String;Lcom/android/internal/telephony/logdigger/PhoneModel;)V

    .line 61
    iget-object v1, p0, Lcom/android/internal/telephony/logdigger/MLogCollector$1;->this$0:Lcom/android/internal/telephony/logdigger/MLogCollector;

    iget-object v1, v1, Lcom/android/internal/telephony/logdigger/MLogCollector;->mDataList:Ljava/util/LinkedList;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 63
    .end local v0    # "data":Lcom/android/internal/telephony/logdigger/PhoneModel;
    :cond_0
    return-void
.end method
