.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMLPLLoaded;
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
    name = "EfCsimMLPLLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    .line 1032
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMLPLLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    .line 1032
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMLPLLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1035
    const-string v0, "EF_CSIM_MLPL"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimMLPLLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    # invokes: Lcom/android/internal/telephony/uicc/RuimRecords;->onGetCSimMLPLDone(Landroid/os/AsyncResult;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$2100(Lcom/android/internal/telephony/uicc/RuimRecords;Landroid/os/AsyncResult;)V

    .line 1040
    return-void
.end method
