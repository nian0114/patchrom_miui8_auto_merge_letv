.class Lcom/android/server/fingerprint/FingerprintReport$2;
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
    .line 45
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintReport$2;->this$0:Lcom/android/server/fingerprint/FingerprintReport;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "action":Ljava/lang/String;
    const-string v1, "FingerprintReport"

    const-string v2, "boot complete"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintReport$2;->this$0:Lcom/android/server/fingerprint/FingerprintReport;

    # invokes: Lcom/android/server/fingerprint/FingerprintReport;->startAlarmForReport()V
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintReport;->access$100(Lcom/android/server/fingerprint/FingerprintReport;)V

    .line 51
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintReport$2;->this$0:Lcom/android/server/fingerprint/FingerprintReport;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintReport$2;->this$0:Lcom/android/server/fingerprint/FingerprintReport;

    # getter for: Lcom/android/server/fingerprint/FingerprintReport;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintReport;->access$200(Lcom/android/server/fingerprint/FingerprintReport;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x107005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/fingerprint/FingerprintReport;->mMsgArray:[Ljava/lang/String;

    .line 56
    :cond_0
    return-void
.end method
