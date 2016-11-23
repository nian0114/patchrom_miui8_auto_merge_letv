.class public Lcom/android/server/location/GeocoderProxy;
.super Ljava/lang/Object;
.source "GeocoderProxy.java"


# static fields
.field public static final GEOCODER_NAME:Ljava/lang/String; = "geocoder"

.field private static final SERVICE_ACTION:Ljava/lang/String; = "com.android.location.service.GeocodeProvider"

.field private static final TAG:Ljava/lang/String; = "GeocoderProxy"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mServiceWatcher:Lcom/android/server/ServiceWatcher;


# direct methods
.method private constructor <init>(Landroid/content/Context;IIILandroid/os/Handler;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "overlaySwitchResId"    # I
    .param p3, "defaultServicePackageNameResId"    # I
    .param p4, "initialPackageNamesResId"    # I
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcom/android/server/ServiceWatcher;

    iget-object v1, p0, Lcom/android/server/location/GeocoderProxy;->mContext:Landroid/content/Context;

    const-string v2, "GeocoderProxy"

    const-string v3, "geocoder"

    const-string v4, "com.android.location.service.GeocodeProvider"

    const/4 v8, 0x0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/ServiceWatcher;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Runnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    .line 63
    return-void
.end method

.method private bind()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->start()Z

    move-result v0

    return v0
.end method

.method public static createAndBind(Landroid/content/Context;IIILandroid/os/Handler;)Lcom/android/server/location/GeocoderProxy;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overlaySwitchResId"    # I
    .param p2, "defaultServicePackageNameResId"    # I
    .param p3, "initialPackageNamesResId"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 47
    new-instance v0, Lcom/android/server/location/GeocoderProxy;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;IIILandroid/os/Handler;)V

    .line 49
    .local v0, "proxy":Lcom/android/server/location/GeocoderProxy;
    invoke-direct {v0}, Lcom/android/server/location/GeocoderProxy;->bind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    .end local v0    # "proxy":Lcom/android/server/location/GeocoderProxy;
    :goto_0
    return-object v0

    .restart local v0    # "proxy":Lcom/android/server/location/GeocoderProxy;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getService()Landroid/location/IGeocodeProvider;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeProvider;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 108
    const-string v0, "  Geocoder:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    providerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 110
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 111
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/ServiceWatcher;->dump(Ljava/io/PrintWriter;)V

    .line 112
    return-void
.end method

.method public getConnectedPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/location/GeocoderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;

    invoke-virtual {v0}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "maxResults"    # I
    .param p6, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 79
    .local p7, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-direct {p0}, Lcom/android/server/location/GeocoderProxy;->getService()Landroid/location/IGeocodeProvider;

    move-result-object v1

    .line 80
    .local v1, "provider":Landroid/location/IGeocodeProvider;
    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    .line 82
    :try_start_0
    invoke-interface/range {v1 .. v8}, Landroid/location/IGeocodeProvider;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 87
    :goto_0
    return-object v2

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "GeocoderProxy"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "Service not Available"

    goto :goto_0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p1, "locationName"    # Ljava/lang/String;
    .param p2, "lowerLeftLatitude"    # D
    .param p4, "lowerLeftLongitude"    # D
    .param p6, "upperRightLatitude"    # D
    .param p8, "upperRightLongitude"    # D
    .param p10, "maxResults"    # I
    .param p11, "params"    # Landroid/location/GeocoderParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 94
    .local p12, "addrs":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-direct {p0}, Lcom/android/server/location/GeocoderProxy;->getService()Landroid/location/IGeocodeProvider;

    move-result-object v0

    .line 95
    .local v0, "provider":Landroid/location/IGeocodeProvider;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    .line 97
    :try_start_0
    invoke-interface/range {v0 .. v12}, Landroid/location/IGeocodeProvider;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 104
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v13

    .line 101
    .local v13, "e":Landroid/os/RemoteException;
    const-string v1, "GeocoderProxy"

    invoke-static {v1, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v13    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "Service not Available"

    goto :goto_0
.end method
