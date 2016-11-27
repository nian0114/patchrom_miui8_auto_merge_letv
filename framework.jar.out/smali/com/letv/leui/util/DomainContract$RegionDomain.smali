.class public Lcom/letv/leui/util/DomainContract$RegionDomain;
.super Ljava/lang/Object;
.source "LeDomainManager.java"

# interfaces
.implements Lcom/letv/leui/util/DomainContract$RegionDomainColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/DomainContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegionDomain"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_VIEW:Landroid/net/Uri;

.field public static final TABLE:Ljava/lang/String; = "region_domain"

.field public static final VIEW:Ljava/lang/String; = "view_region_domain"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 501
    sget-object v0, Lcom/letv/leui/util/DomainContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "region_domain"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/DomainContract$RegionDomain;->CONTENT_URI:Landroid/net/Uri;

    .line 503
    sget-object v0, Lcom/letv/leui/util/DomainContract;->BASE_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "view_region_domain"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/util/DomainContract$RegionDomain;->CONTENT_URI_VIEW:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
