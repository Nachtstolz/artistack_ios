//
//  Post.swift
//  Practice_Artistack
//
//  Created by csh on 2022/07/28.
//

import Foundation

struct Post: Codable {
    
    var success: Bool
    var code: Int
    var message: String
    var data: PostInfo

}

struct PostInfo: Codable {
    var id: Int
    var videoUrl: String
    var title: String?
    var description: String?
    var bpm: String?
    var codeFlow: String?
    var scope: String
    var isStackable: Bool
    var viewCount: Int?
    var prevProjectId: Int?
    var user: User
    var instruments: [Instrument]
    var likeCount: Int
    var stackCount: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case videoUrl
        case title
        case description
        case isStackable
        case scope
        case codeFlow
        case bpm
        case viewCount
        case prevProjectId
        case user
        case instruments
        case likeCount
        case stackCount
    }
}



/*
import Foundation
import UIKit
import AVFoundation

struct Post: Codable{
    var id: String
    var video: String
    var videoURL: URL?
    var videoFileExtension: String?
    var videoHeight: Int
    var videoWidth: Int
    var autherID: String
    var autherName: String
    var caption: String
    var music: String
    var likeCount: Int
    var shareCount: Int
    var commentID: String
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case video
        case videoURL
        case videoFileExtension
        case videoHeight
        case videoWidth
        case autherID = "author"
        case autherName
        case caption
        case music
        case likeCount
        case shareCount
        case commentID
    }
    
    init(id: String, video: String, videoURL: URL? = nil, videoFileExtension: String? = nil, videoHeight: Int, videoWidth: Int, autherID: String, autherName: String, caption: String, music: String, likeCount: Int, shareCount: Int, commentID: String) {
        self.id = id
        self.video = video
        self.videoURL = videoURL ?? URL(fileURLWithPath: "")
        self.videoFileExtension = videoFileExtension ?? "mp4"
        self.videoHeight = videoHeight
        self.videoWidth = videoWidth
        self.autherID = autherID
        self.autherName = autherName
        self.caption = caption
        self.music = music
        self.likeCount = likeCount
        self.shareCount = shareCount
        self.commentID = commentID
    }
    
    init(dictionary: [String: Any]) {
        id = dictionary["id"] as? String ?? ""
        video = dictionary["video"] as? String ?? ""
        let urlString = dictionary["videoURL"] as? String ?? ""
        videoURL = URL(string: urlString)
        videoFileExtension = dictionary["videoFileExtension"] as? String ?? ""
        videoHeight = dictionary["videoHeight"] as? Int ?? 0
        videoWidth = dictionary["videoWidth"] as? Int ?? 0
        autherID = dictionary["author"] as? String ?? ""
        autherName = dictionary["autherName"] as? String ?? ""
        caption = dictionary["caption"] as? String ?? ""
        music = dictionary["music"] as? String ?? ""
        likeCount = dictionary["likeCount"] as? Int ?? 0
        shareCount = dictionary["shareCount"] as? Int ?? 0
        commentID = dictionary["commentID"] as? String ?? ""
    }

    
    var dictionary: [String: Any] {
        let data = (try? JSONEncoder().encode(self)) ?? Data()
        return (try? JSONSerialization.jsonObject(with: data, options: [.mutableContainers, .allowFragments]) as? [String: Any]) ?? [:]
    }
    
}
*/
