.class public final Lcom/letv/leui/provider/BrowserContract$History;
.super Ljava/lang/Object;
.source "BrowserContract.java"

# interfaces
.implements Lcom/letv/leui/provider/BrowserContract$CommonColumns;
.implements Lcom/letv/leui/provider/BrowserContract$HistoryColumns;
.implements Lcom/letv/leui/provider/BrowserContract$ImageColumns;
.implements Lcom/letv/leui/provider/BrowserContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/provider/BrowserContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "History"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/browser-history"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/browser-history"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final IS_DELETED:Ljava/lang/String; = "deleted"

.field public static final QUERY_PARAMETER_SHOW_DELETED:Ljava/lang/String; = "show_deleted"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    sget-object v0, Lcom/letv/leui/provider/BrowserContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "history"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/letv/leui/provider/BrowserContract$History;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
