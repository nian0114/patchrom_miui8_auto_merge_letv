.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->takePicture(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$restricted:Z

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .locals 0

    .prologue
    .line 1235
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$token:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$effectiveGroupId:I

    iput-object p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput-boolean p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$restricted:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$effectiveGroupId:I

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-boolean v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$restricted:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->startTakePicture(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V

    .line 1239
    return-void
.end method
