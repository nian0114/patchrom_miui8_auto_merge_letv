.class public Landroid/net/NetSniffer;
.super Ljava/lang/Object;
.source "NetSniffer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetSniffer$httpClientSniffer;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetSniffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = true

.field private static final DEFAULT_HTTP_URL:Ljava/lang/String; = "http://www.google.com"

.field private static final SOCKET_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "NetSniffer"


# instance fields
.field private mhttpUrl:Ljava/lang/String;

.field private msnifferRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/net/NetSniffer$1;

    invoke-direct {v0}, Landroid/net/NetSniffer$1;-><init>()V

    sput-object v0, Landroid/net/NetSniffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetSniffer;->mhttpUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetSniffer;->msnifferRes:I

    const-string v0, "http://www.google.com"

    iput-object v0, p0, Landroid/net/NetSniffer;->mhttpUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "httpurl"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetSniffer;->mhttpUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetSniffer;->msnifferRes:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "http://www.google.com"

    iput-object v0, p0, Landroid/net/NetSniffer;->mhttpUrl:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/net/NetSniffer;->mhttpUrl:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized SnifferNetAccess(Ljava/lang/String;)Z
    .locals 6
    .param p1, "httpurl"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    monitor-enter p0

    const/4 v2, 0x0

    .local v2, "ret":Z
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    const-string v4, "http://www.google.com"

    iput-object v4, p0, Landroid/net/NetSniffer;->mhttpUrl:Ljava/lang/String;

    :goto_0
    new-instance v1, Landroid/net/NetSniffer$httpClientSniffer;

    iget-object v4, p0, Landroid/net/NetSniffer;->mhttpUrl:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v1, p0, v4, v5}, Landroid/net/NetSniffer$httpClientSniffer;-><init>(Landroid/net/NetSniffer;Ljava/lang/String;Landroid/net/NetSniffer$1;)V

    .local v1, "oneTask":Landroid/net/NetSniffer$httpClientSniffer;
    invoke-virtual {v1}, Landroid/net/NetSniffer$httpClientSniffer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Landroid/net/NetSniffer$httpClientSniffer;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/net/NetSniffer$httpClientSniffer;->getAccessRetsult()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    iput v3, p0, Landroid/net/NetSniffer;->msnifferRes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move v3, v2

    :goto_2
    monitor-exit p0

    return v3

    .end local v1    # "oneTask":Landroid/net/NetSniffer$httpClientSniffer;
    :cond_1
    :try_start_3
    iput-object p1, p0, Landroid/net/NetSniffer;->mhttpUrl:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "oneTask":Landroid/net/NetSniffer$httpClientSniffer;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x0

    :try_start_4
    iput v4, p0, Landroid/net/NetSniffer;->msnifferRes:I

    goto :goto_2

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/NetSniffer;->msnifferRes:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessRetsult()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/net/NetSniffer;->msnifferRes:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/net/NetSniffer;->mhttpUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/net/NetSniffer;->msnifferRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
