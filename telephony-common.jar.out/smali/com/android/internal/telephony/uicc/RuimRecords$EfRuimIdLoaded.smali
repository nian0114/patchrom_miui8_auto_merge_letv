.class Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfRuimIdLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1010
    const-string v0, "EF_RUIM_ID"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1017
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    .line 1019
    .local v0, "data":[B
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RuimId Data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 1020
    if-nez v0, :cond_1

    .line 1035
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    const/4 v5, 0x0

    aget-byte v3, v0, v5

    .line 1024
    .local v3, "numOfBytes":I
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    .line 1025
    new-array v1, v3, [B

    .line 1026
    .local v1, "decodeData":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 1027
    sub-int v5, v3, v2

    aget-byte v5, v0, v5

    aput-byte v5, v1, v2

    .line 1026
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1029
    :cond_2
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 1030
    .local v4, "ruimId":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # setter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mUIMid:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$2002(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)Ljava/lang/String;

    .line 1031
    const-string v5, "RuimRecords"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUIMid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->mUIMid:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$2000(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfRuimIdLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RUIM_ID="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
