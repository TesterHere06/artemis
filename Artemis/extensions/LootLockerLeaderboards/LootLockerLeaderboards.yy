{
  "$GMExtension":"",
  "%Name":"LootLockerLeaderboards",
  "androidactivityinject":"",
  "androidclassname":"",
  "androidcodeinjection":"",
  "androidinject":"",
  "androidmanifestinject":"",
  "androidPermissions":[],
  "androidProps":false,
  "androidsourcedir":"",
  "author":"",
  "classname":"",
  "copyToTargets":-1,
  "description":"",
  "exportToGame":true,
  "extensionVersion":"0.0.1",
  "files":[
    {"$GMExtensionFile":"","%Name":"","constants":[],"copyToTargets":-1,"filename":"LootLockerInitialize.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"LootLockerInitialize","argCount":0,"args":[1,1,2,1,],"documentation":"","externalName":"LootLockerInitialize","help":"LootLockerInitialize((string)\"gameAPIKey\",(string)\"version\",(bool true/false)developmentMode,(string or int)\"leaderboardID\")","hidden":false,"kind":2,"name":"LootLockerInitialize","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":2,"name":"","order":[
        {"name":"LootLockerInitialize","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"","constants":[],"copyToTargets":-1,"filename":"LootLockerCallback.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"LootLockerCallback","argCount":0,"args":[],"documentation":"","externalName":"LootLockerCallback","help":"Fetches the leaderboard data","hidden":false,"kind":2,"name":"LootLockerCallback","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":2,"name":"","order":[
        {"name":"LootLockerCallback","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"","constants":[],"copyToTargets":-1,"filename":"LootLockerGetHighscoresTop.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"LootLockerGetHighscoresTop","argCount":0,"args":[1,1,],"documentation":"","externalName":"LootLockerGetHighscoresTop","help":"LootLockerGetHighscoresTop(\"leaderboardID\", \"count\")// Manually fetch leaderboard data","hidden":false,"kind":2,"name":"LootLockerGetHighscoresTop","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":2,"name":"","order":[
        {"name":"LootLockerGetHighscoresTop","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"","constants":[],"copyToTargets":-1,"filename":"LootLockerSubmitScore.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"LootLockerSubmitScore","argCount":0,"args":[1,1,],"documentation":"","externalName":"LootLockerSubmitScore","help":"LootLockerSubmitScore(\"leaderboardID\", \"scoreToUpload\") // Uploads score to the leaderboard","hidden":false,"kind":2,"name":"LootLockerSubmitScore","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":2,"name":"","order":[
        {"name":"LootLockerSubmitScore","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"","constants":[],"copyToTargets":-1,"filename":"LootLockerSetPlayerName.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"LootLockerSetPlayerName","argCount":0,"args":[1,],"documentation":"","externalName":"LootLockerSetPlayerName","help":"LootLockerSetPlayerName(\"newName\") // Set a new name to the current player","hidden":false,"kind":2,"name":"LootLockerSetPlayerName","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":2,"name":"","order":[
        {"name":"LootLockerSetPlayerName","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"","constants":[],"copyToTargets":-1,"filename":"LootLockerGetHighscoresCentered.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"LootLockerGetHighscoresCentered","argCount":0,"args":[],"documentation":"","externalName":"LootLockerGetHighscoresCentered","help":"LootLockerGetHighscoresCentered() // Manually get the centered leaderboard entries","hidden":false,"kind":2,"name":"LootLockerGetHighscoresCentered","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":2,"name":"","order":[
        {"name":"LootLockerGetHighscoresCentered","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"","constants":[],"copyToTargets":-1,"filename":"LootLockerReset.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"LootLockerReset","argCount":0,"args":[],"documentation":"","externalName":"LootLockerReset","help":"LootLockerReset() // Log out current player and start a new session","hidden":false,"kind":2,"name":"LootLockerReset","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":2,"name":"","order":[
        {"name":"LootLockerReset","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"","constants":[],"copyToTargets":-1,"filename":"LootLockerVariables.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"LLHighscoresTopRankList","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresTopRankList","help":"Get Top Rank as array","hidden":false,"kind":2,"name":"LLHighscoresTopRankList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresTopNamesList","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresTopNamesList","help":"Get Top Names as array","hidden":false,"kind":2,"name":"LLHighscoresTopNamesList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresTopMetadataList","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresTopMetadataList","help":"Get Top Metadata as array","hidden":false,"kind":2,"name":"LLHighscoresTopMetadataList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresTopScoreList","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresTopScoreList","help":"Get Top scores as array","hidden":false,"kind":2,"name":"LLHighscoresTopScoreList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresTopIDList","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresTopIDList","help":"Get Top ID as array","hidden":false,"kind":2,"name":"LLHighscoresTopIDList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresTopFormatted","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresTopFormatted","help":"Get full top leaderboard as string","hidden":false,"kind":2,"name":"LLHighscoresTopFormatted","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresCenteredRankList","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresCenteredRankList","help":"Get Centered Rank as array","hidden":false,"kind":2,"name":"LLHighscoresCenteredRankList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresCenteredNamesList","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresCenteredNamesList","help":"Get Centered Names as array","hidden":false,"kind":2,"name":"LLHighscoresCenteredNamesList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresCenteredMetadataList","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresCenteredMetadataList","help":"Get Centered MetaData as array","hidden":false,"kind":2,"name":"LLHighscoresCenteredMetadataList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresCenteredScoreList","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresCenteredScoreList","help":"Get Centered Scores as array","hidden":false,"kind":2,"name":"LLHighscoresCenteredScoreList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresCenteredIDList","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresCenteredIDList","help":"Get Centered ID's as array","hidden":false,"kind":2,"name":"LLHighscoresCenteredIDList","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLHighscoresCenteredFormatted","argCount":0,"args":[],"documentation":"","externalName":"LLHighscoresCenteredFormatted","help":"Get full centered leaderboard as string","hidden":false,"kind":2,"name":"LLHighscoresCenteredFormatted","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLPlayerRank","argCount":0,"args":[],"documentation":"","externalName":"LLPlayerRank","help":"Get current player rank on leaderboard","hidden":false,"kind":2,"name":"LLPlayerRank","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLPlayerName","argCount":0,"args":[],"documentation":"","externalName":"LLPlayerName","help":"Get current player name on leaderboard","hidden":false,"kind":2,"name":"LLPlayerName","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLPlayerID","argCount":0,"args":[],"documentation":"","externalName":"LLPlayerID","help":"Get current player ID on leaderboard","hidden":false,"kind":2,"name":"LLPlayerID","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLPlayerScore","argCount":0,"args":[],"documentation":"","externalName":"LLPlayerScore","help":"Get current player score on leaderboard","hidden":false,"kind":2,"name":"LLPlayerScore","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LLPlayerMetadata","argCount":0,"args":[],"documentation":"","externalName":"LLPlayerMetadata","help":"Get current player metadata on leaderboard","hidden":false,"kind":2,"name":"LLPlayerMetadata","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":2,"name":"","order":[
        {"name":"LLHighscoresTopRankList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresTopNamesList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresTopMetadataList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresTopScoreList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresTopIDList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresTopFormatted","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredRankList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredNamesList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredMetadataList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredScoreList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredIDList","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLHighscoresCenteredFormatted","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLPlayerRank","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLPlayerName","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLPlayerID","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLPlayerScore","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LLPlayerMetadata","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"","constants":[],"copyToTargets":-1,"filename":"LootLockerAutoRefresh.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"LootLockerTurnOffAutoRefresh","argCount":0,"args":[],"documentation":"","externalName":"LootLockerTurnOffAutoRefresh","help":"Turn off auto Refresh for leaderboards","hidden":false,"kind":2,"name":"LootLockerTurnOffAutoRefresh","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
        {"$GMExtensionFunction":"","%Name":"LootLockerTurnOnAutoRefresh","argCount":0,"args":[],"documentation":"","externalName":"LootLockerTurnOnAutoRefresh","help":"Turn on auto Refresh for leaderboards","hidden":false,"kind":2,"name":"LootLockerTurnOnAutoRefresh","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":2,"name":"","order":[
        {"name":"LootLockerTurnOffAutoRefresh","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
        {"name":"LootLockerTurnOnAutoRefresh","path":"extensions/LootLockerLeaderboards/LootLockerLeaderboards.yy",},
      ],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
    {"$GMExtensionFile":"","%Name":"","constants":[],"copyToTargets":-1,"filename":"LootLockerSubmitScoreMetadata.gml","final":"","functions":[
        {"$GMExtensionFunction":"","%Name":"LootLockerSubmitScoreMetadata","argCount":0,"args":[1,1,1,],"documentation":"","externalName":"LootLockerSubmitScoreMetaData","help":"LootLockerSubmitScore(\"leaderboardID\", \"scoreToUpload\", \"someMetadata\") // Uploads score to the leaderboard with metadata","hidden":false,"kind":2,"name":"LootLockerSubmitScoreMetadata","resourceType":"GMExtensionFunction","resourceVersion":"2.0","returnType":1,},
      ],"init":"","kind":2,"name":"","order":[],"origname":"","ProxyFiles":[],"resourceType":"GMExtensionFile","resourceVersion":"2.0","uncompress":false,"usesRunnerInterface":false,},
  ],
  "gradleinject":"",
  "hasConvertedCodeInjection":true,
  "helpfile":"",
  "HTML5CodeInjection":"",
  "html5Props":false,
  "IncludedResources":[],
  "installdir":"",
  "iosCocoaPodDependencies":"",
  "iosCocoaPods":"",
  "ioscodeinjection":"",
  "iosdelegatename":"",
  "iosplistinject":"",
  "iosProps":true,
  "iosSystemFrameworkEntries":[],
  "iosThirdPartyFrameworkEntries":[],
  "license":"",
  "maccompilerflags":"",
  "maclinkerflags":"",
  "macsourcedir":"",
  "name":"LootLockerLeaderboards",
  "options":[],
  "optionsFile":"options.json",
  "packageId":"",
  "parent":{
    "name":"Artemis",
    "path":"Artemis.yyp",
  },
  "productId":"",
  "resourceType":"GMExtension",
  "resourceVersion":"2.0",
  "sourcedir":"",
  "supportedTargets":-1,
  "tvosclassname":null,
  "tvosCocoaPodDependencies":"",
  "tvosCocoaPods":"",
  "tvoscodeinjection":"",
  "tvosdelegatename":null,
  "tvosmaccompilerflags":"",
  "tvosmaclinkerflags":"",
  "tvosplistinject":"",
  "tvosProps":false,
  "tvosSystemFrameworkEntries":[],
  "tvosThirdPartyFrameworkEntries":[],
}