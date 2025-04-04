const _trailingZerosPattern = r'^(\d+(?:\.\d*?[1-9](?=0|\b))?)\.?0*$';
final trailingZerosRegex = RegExp(_trailingZerosPattern);

const _hrefPattern =
    r'https?://(?:www\.)?[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,}(?:/[^\s]*)?';
final hrefRegex = RegExp(_hrefPattern);

/// This pattern allows for both HTTP and HTTPS Scheme
/// It allows for query parameters
/// It only allows the following image extensions: .png, .jpg, .jpeg, .gif, .webm, .webp, .bmp
///
const _imgUrlPattern =
    r'(https?:\/\/)([^\s(["<,>/]*)(\/)[^\s[",><]*(.png|.jpg|.jpeg|.gif|.webm|.webp|.bmp)(\?[^\s[",><]*)?';
final imgUrlRegex = RegExp(_imgUrlPattern);

const _singleLineMarkdownImagePattern = "^!\\[.*\\]\\(($_hrefPattern)\\)\$";
final singleLineMarkdownImageRegex = RegExp(_singleLineMarkdownImagePattern);

/// This pattern allows for both HTTP and HTTPS Scheme
/// It allows for query parameters
/// It only allows the following video extensions:
///  .mp4, .mov, .avi, .webm, .flv, .m4v (mpeg), .mpeg, .h264,
///
const _videoUrlPattern =
    r'(https?:\/\/)([^\s(["<,>/]*)(\/)[^\s[",><]*(.mp4|.mov|.avi|.webm|.flv|.m4v|.mpeg|.h264)(\?[^\s[",><]*)?';
final videoUrlRegex = RegExp(_videoUrlPattern);

/// This pattern matches both youtube.com and shortened youtu.be urls.
///
const _youtubeUrlPattern = r'^(https?:\/\/)?(www\.)?(youtube\.com|youtu\.be)\/';
final youtubeUrlRegex = RegExp(_youtubeUrlPattern);

const _appflowyCloudUrlPattern = r'^(https:\/\/)(.*)(\.appflowy\.cloud\/)(.*)';
final appflowyCloudUrlRegex = RegExp(_appflowyCloudUrlPattern);

const _camelCasePattern = '(?<=[a-z])[A-Z]';
final camelCaseRegex = RegExp(_camelCasePattern);

const _macOSVolumesPattern = '^/Volumes/[^/]+';
final macOSVolumesRegex = RegExp(_macOSVolumesPattern);

const appflowySharePageLinkPattern =
    r'^https://appflowy\.com/app/([^/]+)/([^?]+)(?:\?blockId=(.+))?$';
final appflowySharePageLinkRegex = RegExp(appflowySharePageLinkPattern);

const _numberedListPattern = r'^(\d+)\.';
final numberedListRegex = RegExp(_numberedListPattern);

const _localPathPattern = r'^(file:\/\/|\/|\\|[a-zA-Z]:[/\\]|\.{1,2}[/\\])';
final localPathRegex = RegExp(_localPathPattern, caseSensitive: false);

const _wordPattern = r"\S+";
final wordRegex = RegExp(_wordPattern);

const _appleNotesPattern =
    r'<meta\s+name="Generator"\s+content="Cocoa HTML Writer"\s*>\s*<meta\s+name="CocoaVersion"\s+content="\d+"\s*>';
final appleNotesRegex = RegExp(_appleNotesPattern);
