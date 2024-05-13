package com.lucaswelter.certification_nlw.modules.questions.controllers;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.lucaswelter.certification_nlw.modules.questions.dto.QuestionAlternativeResultDTO;
import com.lucaswelter.certification_nlw.modules.questions.dto.QuestionResultDTO;
import com.lucaswelter.certification_nlw.modules.questions.entities.AlternativesEntity;
import com.lucaswelter.certification_nlw.modules.questions.entities.QuestionEntity;
import com.lucaswelter.certification_nlw.modules.questions.repositories.QuestionRepository;

@RestController
@RequestMapping("/questions")
public class QuestionController {

    @Autowired
    private QuestionRepository questionRepository;

    @GetMapping("technology/{technology}")  
    public List<QuestionResultDTO> findByTechnology(@PathVariable String technology){
        var result = this.questionRepository.findByTechnology(technology);

        var toMap = result.stream().map(question -> mapQuestionToDTO(question))
        .collect(Collectors.toList());
        return toMap;
    }

    static QuestionResultDTO mapQuestionToDTO(QuestionEntity question){
        var questionResultDTO = QuestionResultDTO.builder()
        .id(question.getId())
        .technology(question.getTechnology())
        .description(question.getDescription()).build();

        List<QuestionAlternativeResultDTO> questionAlternativeResultDTOs = question.getAlternatives()
        .stream().map(alternative -> mapAlternativeResultDTO(alternative))
        .collect(Collectors.toList());      

        questionResultDTO.setAlternatives(questionAlternativeResultDTOs);
        return questionResultDTO;
    }

    static QuestionAlternativeResultDTO mapAlternativeResultDTO(AlternativesEntity questionAlternativesResultDTO){
        return QuestionAlternativeResultDTO.builder()
        .id(questionAlternativesResultDTO.getId())
        .description(questionAlternativesResultDTO.getDescription()).build();
    }


}
