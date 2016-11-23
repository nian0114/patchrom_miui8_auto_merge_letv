.class Lcom/android/server/fingerprint/FingerprintReport$1;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintReport;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintReport;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintReport$1;->this$0:Lcom/android/server/fingerprint/FingerprintReport;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.fp.alarm.report"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string v1, "FingerprintReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver : action : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintReport$1;->this$0:Lcom/android/server/fingerprint/FingerprintReport;

    # invokes: Lcom/android/server/fingerprint/FingerprintReport;->reportDailyAuthResult()V
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintReport;->access$000(Lcom/android/server/fingerprint/FingerprintReport;)V

    .line 40
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintReport$1;->this$0:Lcom/android/server/fingerprint/FingerprintReport;

    # invokes: Lcom/android/server/fingerprint/FingerprintReport;->startAlarmForReport()V
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintReport;->access$100(Lcom/android/server/fingerprint/FingerprintReport;)V

    .line 42
    :cond_0
    return-void
.end method
