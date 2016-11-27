.class public final enum Lcom/letv/tracker/enums/Key;
.super Ljava/lang/Enum;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/letv/tracker/enums/Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/letv/tracker/enums/Key;

.field public static final enum AppName:Lcom/letv/tracker/enums/Key;

.field public static final enum Class:Lcom/letv/tracker/enums/Key;

.field public static final enum Content:Lcom/letv/tracker/enums/Key;

.field public static final enum Description:Lcom/letv/tracker/enums/Key;

.field public static final enum EndTime:Lcom/letv/tracker/enums/Key;

.field public static final enum FailType:Lcom/letv/tracker/enums/Key;

.field public static final enum FileName:Lcom/letv/tracker/enums/Key;

.field public static final enum FileSize:Lcom/letv/tracker/enums/Key;

.field public static final enum FileType:Lcom/letv/tracker/enums/Key;

.field public static final enum FolderName:Lcom/letv/tracker/enums/Key;

.field public static final enum From:Lcom/letv/tracker/enums/Key;

.field public static final enum GId:Lcom/letv/tracker/enums/Key;

.field public static final enum Input:Lcom/letv/tracker/enums/Key;

.field public static final enum Method:Lcom/letv/tracker/enums/Key;

.field public static final enum Number:Lcom/letv/tracker/enums/Key;

.field public static final enum PackageName:Lcom/letv/tracker/enums/Key;

.field public static final enum Path:Lcom/letv/tracker/enums/Key;

.field public static final enum Percentage:Lcom/letv/tracker/enums/Key;

.field public static final enum Provider:Lcom/letv/tracker/enums/Key;

.field public static final enum SearchEngine:Lcom/letv/tracker/enums/Key;

.field public static final enum ShortcutName:Lcom/letv/tracker/enums/Key;

.field public static final enum Show:Lcom/letv/tracker/enums/Key;

.field public static final enum StartTime:Lcom/letv/tracker/enums/Key;

.field public static final enum To:Lcom/letv/tracker/enums/Key;

.field public static final enum Type:Lcom/letv/tracker/enums/Key;

.field public static final enum Url:Lcom/letv/tracker/enums/Key;

.field public static final enum VedioId:Lcom/letv/tracker/enums/Key;

.field public static final enum WidgetName:Lcom/letv/tracker/enums/Key;

.field private static keeped:[Ljava/lang/String;


# instance fields
.field private id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Url"

    const-string v2, "url"

    invoke-direct {v0, v1, v4, v2}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Url:Lcom/letv/tracker/enums/Key;

    .line 8
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Input"

    const-string v2, "input"

    invoke-direct {v0, v1, v5, v2}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Input:Lcom/letv/tracker/enums/Key;

    .line 9
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "SearchEngine"

    const-string v2, "searchEngine"

    invoke-direct {v0, v1, v6, v2}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->SearchEngine:Lcom/letv/tracker/enums/Key;

    .line 10
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "From"

    const-string v2, "from"

    invoke-direct {v0, v1, v7, v2}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->From:Lcom/letv/tracker/enums/Key;

    .line 11
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "To"

    const-string v2, "to"

    invoke-direct {v0, v1, v8, v2}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->To:Lcom/letv/tracker/enums/Key;

    .line 12
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Description"

    const/4 v2, 0x5

    const-string v3, "des"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Description:Lcom/letv/tracker/enums/Key;

    .line 13
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "FailType"

    const/4 v2, 0x6

    const-string v3, "failType"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->FailType:Lcom/letv/tracker/enums/Key;

    .line 14
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "FileName"

    const/4 v2, 0x7

    const-string v3, "fileName"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->FileName:Lcom/letv/tracker/enums/Key;

    .line 15
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "FileType"

    const/16 v2, 0x8

    const-string v3, "fileType"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->FileType:Lcom/letv/tracker/enums/Key;

    .line 16
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "FileSize"

    const/16 v2, 0x9

    const-string v3, "fileSize"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->FileSize:Lcom/letv/tracker/enums/Key;

    .line 17
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "FolderName"

    const/16 v2, 0xa

    const-string v3, "folderName"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->FolderName:Lcom/letv/tracker/enums/Key;

    .line 18
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "AppName"

    const/16 v2, 0xb

    const-string v3, "appName"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->AppName:Lcom/letv/tracker/enums/Key;

    .line 19
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "PackageName"

    const/16 v2, 0xc

    const-string v3, "packageName"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->PackageName:Lcom/letv/tracker/enums/Key;

    .line 20
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Provider"

    const/16 v2, 0xd

    const-string v3, "provider"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Provider:Lcom/letv/tracker/enums/Key;

    .line 21
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "StartTime"

    const/16 v2, 0xe

    const-string v3, "starttime"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->StartTime:Lcom/letv/tracker/enums/Key;

    .line 22
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "EndTime"

    const/16 v2, 0xf

    const-string v3, "endtime"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->EndTime:Lcom/letv/tracker/enums/Key;

    .line 23
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "VedioId"

    const/16 v2, 0x10

    const-string v3, "vid"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->VedioId:Lcom/letv/tracker/enums/Key;

    .line 24
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "GId"

    const/16 v2, 0x11

    const-string v3, "gid"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->GId:Lcom/letv/tracker/enums/Key;

    .line 25
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Percentage"

    const/16 v2, 0x12

    const-string v3, "perc"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Percentage:Lcom/letv/tracker/enums/Key;

    .line 26
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Show"

    const/16 v2, 0x13

    const-string v3, "show"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Show:Lcom/letv/tracker/enums/Key;

    .line 27
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Content"

    const/16 v2, 0x14

    const-string v3, "content"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Content:Lcom/letv/tracker/enums/Key;

    .line 28
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Type"

    const/16 v2, 0x15

    const-string v3, "type"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Type:Lcom/letv/tracker/enums/Key;

    .line 29
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Method"

    const/16 v2, 0x16

    const-string v3, "method"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Method:Lcom/letv/tracker/enums/Key;

    .line 30
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "WidgetName"

    const/16 v2, 0x17

    const-string v3, "wName"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->WidgetName:Lcom/letv/tracker/enums/Key;

    .line 31
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Path"

    const/16 v2, 0x18

    const-string v3, "path"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Path:Lcom/letv/tracker/enums/Key;

    .line 32
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "ShortcutName"

    const/16 v2, 0x19

    const-string v3, "scName"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->ShortcutName:Lcom/letv/tracker/enums/Key;

    .line 33
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Number"

    const/16 v2, 0x1a

    const-string v3, "num"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Number:Lcom/letv/tracker/enums/Key;

    .line 34
    new-instance v0, Lcom/letv/tracker/enums/Key;

    const-string v1, "Class"

    const/16 v2, 0x1b

    const-string v3, "class"

    invoke-direct {v0, v1, v2, v3}, Lcom/letv/tracker/enums/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/letv/tracker/enums/Key;->Class:Lcom/letv/tracker/enums/Key;

    .line 6
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/letv/tracker/enums/Key;

    sget-object v1, Lcom/letv/tracker/enums/Key;->Url:Lcom/letv/tracker/enums/Key;

    aput-object v1, v0, v4

    sget-object v1, Lcom/letv/tracker/enums/Key;->Input:Lcom/letv/tracker/enums/Key;

    aput-object v1, v0, v5

    sget-object v1, Lcom/letv/tracker/enums/Key;->SearchEngine:Lcom/letv/tracker/enums/Key;

    aput-object v1, v0, v6

    sget-object v1, Lcom/letv/tracker/enums/Key;->From:Lcom/letv/tracker/enums/Key;

    aput-object v1, v0, v7

    sget-object v1, Lcom/letv/tracker/enums/Key;->To:Lcom/letv/tracker/enums/Key;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/letv/tracker/enums/Key;->Description:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/letv/tracker/enums/Key;->FailType:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/letv/tracker/enums/Key;->FileName:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/letv/tracker/enums/Key;->FileType:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/letv/tracker/enums/Key;->FileSize:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/letv/tracker/enums/Key;->FolderName:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/letv/tracker/enums/Key;->AppName:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/letv/tracker/enums/Key;->PackageName:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/letv/tracker/enums/Key;->Provider:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/letv/tracker/enums/Key;->StartTime:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/letv/tracker/enums/Key;->EndTime:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/letv/tracker/enums/Key;->VedioId:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/letv/tracker/enums/Key;->GId:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/letv/tracker/enums/Key;->Percentage:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/letv/tracker/enums/Key;->Show:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/letv/tracker/enums/Key;->Content:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/letv/tracker/enums/Key;->Type:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/letv/tracker/enums/Key;->Method:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/letv/tracker/enums/Key;->WidgetName:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/letv/tracker/enums/Key;->Path:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/letv/tracker/enums/Key;->ShortcutName:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/letv/tracker/enums/Key;->Number:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/letv/tracker/enums/Key;->Class:Lcom/letv/tracker/enums/Key;

    aput-object v2, v0, v1

    sput-object v0, Lcom/letv/tracker/enums/Key;->$VALUES:[Lcom/letv/tracker/enums/Key;

    .line 44
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "res"

    aput-object v1, v0, v4

    const-string v1, "op"

    aput-object v1, v0, v5

    const-string v1, "source"

    aput-object v1, v0, v6

    sput-object v0, Lcom/letv/tracker/enums/Key;->keeped:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput-object p3, p0, Lcom/letv/tracker/enums/Key;->id:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static isExsited(Ljava/lang/String;)Z
    .locals 7
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 71
    invoke-static {}, Lcom/letv/tracker/enums/Key;->values()[Lcom/letv/tracker/enums/Key;

    move-result-object v0

    .local v0, "arr$":[Lcom/letv/tracker/enums/Key;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 72
    .local v2, "k":Lcom/letv/tracker/enums/Key;
    invoke-virtual {v2}, Lcom/letv/tracker/enums/Key;->getKeyId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 81
    .end local v0    # "arr$":[Lcom/letv/tracker/enums/Key;
    .end local v2    # "k":Lcom/letv/tracker/enums/Key;
    :cond_0
    :goto_1
    return v5

    .line 71
    .restart local v0    # "arr$":[Lcom/letv/tracker/enums/Key;
    .restart local v2    # "k":Lcom/letv/tracker/enums/Key;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v2    # "k":Lcom/letv/tracker/enums/Key;
    :cond_2
    sget-object v0, Lcom/letv/tracker/enums/Key;->keeped:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 77
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 81
    .end local v4    # "s":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/letv/tracker/enums/Key;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/letv/tracker/enums/Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/letv/tracker/enums/Key;

    return-object v0
.end method

.method public static values()[Lcom/letv/tracker/enums/Key;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/letv/tracker/enums/Key;->$VALUES:[Lcom/letv/tracker/enums/Key;

    invoke-virtual {v0}, [Lcom/letv/tracker/enums/Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/letv/tracker/enums/Key;

    return-object v0
.end method


# virtual methods
.method public getKeyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/letv/tracker/enums/Key;->id:Ljava/lang/String;

    return-object v0
.end method
