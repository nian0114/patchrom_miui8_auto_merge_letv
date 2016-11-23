.class Lcom/android/server/am/BgGPSResourcePolicy$3;
.super Ljava/lang/Object;
.source "BackAppResourcePolicyManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BgGPSResourcePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BgGPSResourcePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/BgGPSResourcePolicy;)V
    .locals 0

    .prologue
    .line 1310
    iput-object p1, p0, Lcom/android/server/am/BgGPSResourcePolicy$3;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1313
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy$3;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->updateLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1900(Lcom/android/server/am/BgGPSResourcePolicy;Landroid/location/Location;)V

    .line 1316
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1319
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1322
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1325
    return-void
.end method
