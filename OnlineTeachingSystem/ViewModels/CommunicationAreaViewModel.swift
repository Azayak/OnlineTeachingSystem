//
//  CommunicationAreaViewModel.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/17.
//

import Foundation

class CommunicationAreaViewModel: ObservableObject {
    @Published var communicationAreaModel: CommunicationAreaModel = CommunicationAreaModel(area_id: 0, course_id: 0, area_name: "", area_desc: "")
    @Published var areaStudentModel: AreaStudentModel = AreaStudentModel(student_id: 0, area_id: 0)
    @Published var topicCellModels: [TopicCellModel] = []
    @Published var userMineDetail: UserMineDetailModel = UserMineDetailModel(user_id: 0, user_name: "", role_category: 0, common_name: "", user_desc: "", user_gender: 0, user_grade: 0, user_class: 0)
    
    
    func postTopic(topic_title: String, topic_content: String) {
        let oneTopic: TopicModel = TopicModel(topic_id: IDGenerator.generateID(), area_id: communicationAreaModel.area_id, user_id: userMineDetail.user_id, topic_title: topic_title, topic_content: topic_content, topic_date: Date(), topic_like_count: 0, topic_comment_count: 0)
        let oneTopicCellModel: TopicCellModel = TopicCellModel(topicModel: oneTopic, ownerModel: userMineDetail)
        db_topics.append(_topic(topic_id: oneTopic.topic_id, area_id: oneTopic.area_id, user_id: oneTopic.user_id, topic_title: oneTopic.topic_title, topic_content: oneTopic.topic_content, topic_date: oneTopic.topic_date, topic_like_count: oneTopic.topic_like_count, topic_comment_count: oneTopic.topic_comment_count))
        topicCellModels.insert(oneTopicCellModel, at: 0)
    }
    
    
    init(user_id: Int, course_id: Int) {
        for db_user in db_users {
            if(user_id == db_user.user_id) {
                self.userMineDetail = UserMineDetailModel(user_id: db_user.user_id, user_name: db_user.user_name, role_category: db_user.role_category, common_name: db_user.common_name, user_desc: db_user.user_desc, user_gender: db_user.user_gender, user_grade: db_user.user_grade, user_class: db_user.user_class)
                break
            }
        }
        for db_communication_area in db_communication_areas {
            if(course_id == db_communication_area.course_id) {
                self.communicationAreaModel = CommunicationAreaModel(area_id: db_communication_area.area_id, course_id: db_communication_area.course_id, area_name: db_communication_area.area_name, area_desc: db_communication_area.area_desc)
                break
            }
        }
        for db_topic in db_topics {
            if(db_topic.area_id == self.communicationAreaModel.area_id) {
                let oneTopicModel: TopicModel = TopicModel(topic_id: db_topic.topic_id, area_id: db_topic.area_id, user_id: db_topic.user_id, topic_title: db_topic.topic_title, topic_content: db_topic.topic_content, topic_date: db_topic.topic_date, topic_like_count: db_topic.topic_like_count, topic_comment_count: db_topic.topic_comment_count)
                for db_user in db_users {
                    if(db_user.user_id == oneTopicModel.user_id) {
                        let oneOwner: UserMineDetailModel = UserMineDetailModel(user_id: db_user.user_id, user_name: db_user.user_name, role_category: db_user.role_category, common_name: db_user.common_name, user_desc: db_user.user_desc, user_gender: db_user.user_gender, user_grade: db_user.user_grade, user_class: db_user.user_class)
                        let oneTopicCellModel: TopicCellModel = TopicCellModel(topicModel: oneTopicModel, ownerModel: oneOwner)
                        topicCellModels.append(oneTopicCellModel)
                        break
                    }
                }
            }
        }
        for db_area_student in db_area_students {
            if(db_area_student.area_id == self.communicationAreaModel.area_id && db_area_student.student_id == self.userMineDetail.user_id) {
                self.areaStudentModel = AreaStudentModel(student_id: db_area_student.student_id, area_id: db_area_student.area_id)
                break
            }
        }
    }
    
    init(user_id: Int, area_id: Int) {
        for db_user in db_users {
            if user_id == db_user.user_id {
                self.userMineDetail = UserMineDetailModel(user_id: db_user.user_id, user_name: db_user.user_name, role_category: db_user.role_category, common_name: db_user.common_name, user_desc: db_user.user_desc, user_gender: db_user.user_gender, user_grade: db_user.user_grade, user_class: db_user.user_class)
                break
            }
        }
        for db_communication_area in db_communication_areas {
            if area_id == db_communication_area.area_id {
                self.communicationAreaModel = CommunicationAreaModel(area_id: db_communication_area.area_id, course_id: db_communication_area.course_id, area_name: db_communication_area.area_name, area_desc: db_communication_area.area_desc)
                break
            }
        }
        for db_topic in db_topics {
            if (db_topic.area_id == self.communicationAreaModel.area_id) {
                let oneTopicModel: TopicModel = TopicModel(topic_id: db_topic.topic_id, area_id: db_topic.area_id, user_id: db_topic.user_id, topic_title: db_topic.topic_title, topic_content: db_topic.topic_content, topic_date: db_topic.topic_date, topic_like_count: db_topic.topic_like_count, topic_comment_count: db_topic.topic_comment_count)
                for db_user in db_users {
                    if user_id == oneTopicModel.user_id {
                        let oneOwner: UserMineDetailModel = UserMineDetailModel(user_id: db_user.user_id, user_name: db_user.user_name, role_category: db_user.role_category, common_name: db_user.common_name, user_desc: db_user.user_desc, user_gender: db_user.user_gender, user_grade: db_user.user_grade, user_class: db_user.user_class)
                        let oneTopicCellModel: TopicCellModel = TopicCellModel(topicModel: oneTopicModel, ownerModel: oneOwner)
                        topicCellModels.append(oneTopicCellModel)
                        break
                    }
                }
            }
        }
        for db_area_student in db_area_students {
            if(db_area_student.area_id == self.communicationAreaModel.area_id && db_area_student.student_id == self.userMineDetail.user_id) {
                self.areaStudentModel = AreaStudentModel(student_id: db_area_student.student_id, area_id: db_area_student.area_id)
                break
            }
        }
    }
}
