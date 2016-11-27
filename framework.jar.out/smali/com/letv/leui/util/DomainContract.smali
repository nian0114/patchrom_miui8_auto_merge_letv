.class Lcom/letv/leui/util/DomainContract;
.super Ljava/lang/Object;
.source "LeDomainManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/util/DomainContract$RegionDomain;,
        Lcom/letv/leui/util/DomainContract$RegionDomainColumns;,
        Lcom/letv/leui/util/DomainContract$Domains;,
        Lcom/letv/leui/util/DomainContract$DomainsColumns;,
        Lcom/letv/leui/util/DomainContract$Regions;,
        Lcom/letv/leui/util/DomainContract$RegionsColumns;,
        Lcom/letv/leui/util/DomainContract$Labels;,
        Lcom/letv/leui/util/DomainContract$LabelsColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.letv.domain.domainprovider"

.field public static final BASE_CONTENT_URI:Landroid/net/Uri;

.field public static final BUNDLE_ERROR_MSG:Ljava/lang/String; = "errorMsg"

.field public static final BUNDLE_MARKER:Ljava/lang/String; = "marker"

.field public static final BUNDLE_MESSENGER:Ljava/lang/String; = "messenger"

.field public static final BUNDLE_PID:Ljava/lang/String; = "pid"

.field public static final BUNDLE_TOKEN:Ljava/lang/String; = "token"

.field public static final FAILURE:I = -0x1

.field public static final METHOD_GROUP:Ljava/lang/String; = "group"

.field public static final METHOD_REGION:Ljava/lang/String; = "region"

.field public static final METHOD_TRIGGER:Ljava/lang/String; = "trigger"

.field public static final READY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.letv.domain.domainprovider"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/DomainContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
